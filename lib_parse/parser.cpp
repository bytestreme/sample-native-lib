#include <iostream>
#include "parser.h"
#include <clang-c/Index.h>

using namespace std;

std::string getCursorKindName(CXCursorKind cursorKind) {
    CXString kindName = clang_getCursorKindSpelling(cursorKind);
    std::string result = clang_getCString(kindName);

    clang_disposeString(kindName);
    return result;
}

std::string getCursorSpelling(CXCursor cursor) {
    CXString cursorSpelling = clang_getCursorSpelling(cursor);
    std::string result = clang_getCString(cursorSpelling);

    clang_disposeString(cursorSpelling);
    return result;
}

CXChildVisitResult visitor(CXCursor cursor, CXCursor /* parent */, CXClientData clientData) {
    CXSourceLocation location = clang_getCursorLocation(cursor);
    if (clang_Location_isFromMainFile(location) == 0)
        return CXChildVisit_Continue;

    CXCursorKind cursorKind = clang_getCursorKind(cursor);

    unsigned int curLevel = *(reinterpret_cast<unsigned int *>( clientData ));
    unsigned int nextLevel = curLevel + 1;

    std::cout << std::string(curLevel, '-') << " " << getCursorKindName(
            cursorKind) << " (" << getCursorSpelling(cursor) << ")\n";

    clang_visitChildren(cursor,
                        visitor,
                        &nextLevel);

    return CXChildVisit_Continue;
}

extern "C" __attribute__((visibility("default"))) __attribute__((used)) void consume(char *st) {


    CXIndex index = clang_createIndex(1, 1);
    CXTranslationUnit unit = clang_parseTranslationUnit(index, st, 0, 0, 0, 0, CXTranslationUnit_None);

    if (unit != 0) {
        std::cout << "Translation unit successfully created" << std::endl;
    } else {
        std::cout << "Translation unit was not created" << std::endl;
        return;
    }


    CXCursor rootCursor = clang_getTranslationUnitCursor(unit);
    unsigned int treeLevel = 0;

    clang_visitChildren(rootCursor, visitor, &treeLevel);


    clang_disposeTranslationUnit(unit);
    clang_disposeIndex(index);
}




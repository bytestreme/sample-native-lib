#include <nuspell/dictionary.hxx>
#include <nuspell/finder.hxx>
#include <iostream>
#include "checker.h"

using namespace std;

extern "C" __attribute__((visibility("default"))) __attribute__((used))
bool check_spell(char *st) {
    std::string word = std::string(st);
	auto dict_finder = nuspell::Finder::search_all_dirs_for_dicts();
	auto path = dict_finder.get_dictionary_path("en_US");
	auto dict = nuspell::Dictionary::load_from_path(path);
	return dict.spell(word);
}

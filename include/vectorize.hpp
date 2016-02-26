#pragma once

#include "include/opencvincludes.hpp"
#include "include/cairo/cairo.h"
#include "include/vectorline.hpp"
#include <vector>
#include <map>
#include <set>

struct vec2i_compare;

uint8_t encodeNeighbors (cv::Mat* image, cv::Vec2i curPixel);
void addToTable (std::vector<int>* neighborhoods, int *ruleTable, int rule);
void initRuleTable(int* ruleTable);
void initPixels(std::vector<vectorLine*>* pixels, cv::Mat* image);
void applyRule(cv::Mat* image, pixel* cur, uint8_t nBits, int* ruleTable,
               std::set<vectorLine*>* lines, std::vector<pixel *> *pixels);

void vectorizeImage (cv::Mat* image, std::string filename);
void refineVectors (std::set<vectorLine*>* lines);
void vectorsToFile (cv::Mat *image, std::set<vectorLine *> lines, std::string filename);

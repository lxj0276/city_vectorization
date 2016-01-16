#ifndef AREAFILTER_HPP
#define AREAFILTER_HPP

#include <vector>

#include "opencvincludes.hpp"
#include "connectedcomponent.hpp"

void areaFilter(cv::Mat input, std::vector<ConnectedComponent>* components, int ratio);

#endif // AREAFILTER_HPP


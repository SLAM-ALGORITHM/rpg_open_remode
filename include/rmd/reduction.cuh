// This file is part of REMODE - REgularized MOnocular Depth Estimation.
//
// Copyright (C) 2014 Matia Pizzoli <matia dot pizzoli at gmail dot com>
// Robotics and Perception Group, University of Zurich, Switzerland
// http://rpg.ifi.uzh.ch
//
// REMODE is free software: you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or any later version.
//
// REMODE is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifndef RMD_REDUCTION_CUH
#define RMD_REDUCTION_CUH

#include <rmd/device_image.cuh>

namespace rmd
{

int sum(const int *in_img_data,
        size_t in_img_stride,
        size_t in_img_width,
        size_t in_img_height);

int sum(const DeviceImage<int> &in_img);

size_t countEqual(const int *in_img_data,
                  size_t in_img_stride,
                  size_t in_img_width,
                  size_t in_img_height,
                  int value);

size_t countEqual(const DeviceImage<int> &in_img,
                  int value);

} // rmd namespace

#endif // RMD_REDUCTION_CUH

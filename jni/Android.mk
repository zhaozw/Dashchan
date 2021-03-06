# Copyright 2014-2016 Fukurou Mishiranu
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

$(call module-class-register,EXTERNAL_SHARED_LIBRARY,,)
EXTERNAL_SHARED_LIBRARY := $(LOCAL_PATH)/script/external-shared-library.mk

module-is-shared-library = $(strip $(filter SHARED_LIBRARY PREBUILT_SHARED_LIBRARY EXTERNAL_SHARED_LIBRARY,\
	$(call module-get-class,$1)))
module-class-is-copyable = $(if $(strip $(filter PREBUILT_SHARED_LIBRARY EXTERNAL_SHARED_LIBRARY,$1)),$(true),$(false))

include $(LOCAL_PATH)/src/Android.mk
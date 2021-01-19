#!/bin/bash -eux
#
# Copyright 2018 The Outline Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Builds the TypeScript in this folder, placing a web app at /www (for Cordova).

tsc -p src/www

rsync -ac 'node_modules/@webcomponents/webcomponentsjs/webcomponents-loader.js' www/
rsync -ac 'node_modules/@webcomponents/webcomponentsjs/custom-elements-es5-adapter.js' www/
rsync -ac 'node_modules/web-animations-js/web-animations-next-lite.min.js' www/
rsync -ac --exclude '*.ts' src/www/ www/

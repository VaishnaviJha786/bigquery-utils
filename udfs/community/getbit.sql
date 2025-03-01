/*
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

-- gitbit: Given an INTEGER value, returns the value of a bit at a specified position.
-- Input: target_arg value, INT64 target_bit_arg position of the bit, starting at 0 
-- Output: value of the bit (0 or 1) at the specified position.
CREATE OR REPLACE FUNCTION fn.getbit(target_arg INT64, target_bit_arg INT64) AS 
((
    SELECT
      (target_arg & 1 << target_bit_arg) >> target_bit_arg
));

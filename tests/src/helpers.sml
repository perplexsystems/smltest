(*
  Copyright 2023 Perplex Systems

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*)

structure TestHelper =
struct
  fun expectPass _ = Expectation.Pass

  val passingTest = Test.test "a passing test" expectPass

  fun expectToFail expectation =
    case expectation of
      Expectation.Pass => Expect.fail "Expected test to fail, but it passed"
    | Expectation.Fail _ => Expect.pass
end

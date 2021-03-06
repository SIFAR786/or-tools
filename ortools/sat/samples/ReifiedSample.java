// Copyright 2010-2017 Google
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import com.google.ortools.sat.CpModel;
import com.google.ortools.sat.ILiteral;
import com.google.ortools.sat.IntVar;

/**
 * Reification is the action of associating a Boolean variable to a constraint. This boolean
 * enforces or prohibits the constraint according to the value the Boolean variable is fixed to.
 *
 * <p>Half-reification is defined as a simple implication: If the Boolean variable is true, then the
 * constraint holds, instead of an complete equivalence.
 *
 * <p>The SAT solver offers half-reification. To implement full reification, two half-reified
 * constraints must be used.
 */
public class ReifiedSample {

  static { System.loadLibrary("jniortools"); }

  public static void main(String[] args) throws Exception {
    CpModel model = new CpModel();

    IntVar x = model.newBoolVar("x");
    IntVar y = model.newBoolVar("y");
    IntVar b = model.newBoolVar("b");

    // Version 1: a half-reified boolean and.
    model.addBoolAnd(new ILiteral[] {x, y.not()}).onlyEnforceIf(b);

    // Version 2: implications.
    model.addImplication(b, x);
    model.addImplication(b, y.not());

    // Version 3: boolean or.
    model.addBoolOr(new ILiteral[] {b.not(), x});
    model.addBoolOr(new ILiteral[] {b.not(), y.not()});
  }
}

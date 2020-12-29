import { __stack, __stack_ptr } from "rt";

var stackStart = __stack_ptr;

function foo(a: usize, b: usize, cond: bool): usize {
  var c = __stack(3);
  var d = __stack(4);
  if (cond) {
    let e = __stack(5);
  } else {
    let f = __stack(6);
  }
  return b;
}

foo(__stack(1), __stack(2), true);
trace("foo(1, 2, true):");
trace("@-4", 1, load<usize>(__stack_ptr - 4));
trace("@-8", 1, load<usize>(__stack_ptr - 8));
trace("@-12", 1, load<usize>(__stack_ptr - 12));
assert(__stack_ptr == stackStart);

foo(__stack(1), __stack(2), false);
trace("foo(1, 2, false):");
trace("@-4", 1, load<usize>(__stack_ptr - 4));
trace("@-8", 1, load<usize>(__stack_ptr - 8));
trace("@-12", 1, load<usize>(__stack_ptr - 12));
assert(__stack_ptr == stackStart);

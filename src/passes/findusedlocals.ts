/**
 * @fileoverview Utility to find all locals used in an expression.
 * @license Apache-2.0
 */

import {
  BinaryenVisitor
} from "./pass";

import {
  BinaryenExpressionRef,
  BinaryenIndex,
  _BinaryenLocalGetGetIndex,
  _BinaryenLocalSetGetIndex
} from "../glue/binaryen";

class FindUsedLocalsVisitor extends BinaryenVisitor {
  used: Set<BinaryenIndex>;

  constructor(used: Set<BinaryenIndex> = new Set()) {
    super();
    this.used = used;
  }
  
  /** @override */
  visitLocalGet(localGet: BinaryenExpressionRef): void {
    this.used.add(_BinaryenLocalGetGetIndex(localGet));
  }

  /** @override */
  visitLocalSet(localSet: BinaryenExpressionRef): void {
    this.used.add(_BinaryenLocalSetGetIndex(localSet));
  }
}

var singleton: FindUsedLocalsVisitor | null = null;

/** Finds the indexes of all locals used in the specified expression. */
export function findUsedLocals(
  expr: BinaryenExpressionRef,
  used: Set<BinaryenIndex> = new Set()
): Set<BinaryenIndex> {
  var visitor = singleton;
  if (!visitor) singleton = visitor = new FindUsedLocalsVisitor(used);
  else visitor.used = used;
  visitor.visit(expr);
  return used;
}

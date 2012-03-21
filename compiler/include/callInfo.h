#ifndef _CALLINFO_H_
#define _CALLINFO_H_

#include "chpl.h"
#include "congruenceClosure.h"

class BlockStmt;
class CallExpr;
class Symbol;
class Type;

class CallInfo {
 public:
  CallExpr*        call;        // call expression (if a call)
  FnSymbol*        fn;          // function symbol (if a prototype)
  BlockStmt*       scope;       // module scope as in M.call
  const char*      name;        // function name
  Vec<Symbol*>     actuals;     // actual symbols
  Vec<const char*> actualNames; // named arguments
  CallInfo(CallExpr* icall, bool genericArgumentsFatal=true);
  CallInfo(FnSymbol* iface, CongruenceClosure &);
};

#endif

#ifndef _OPTIMIZATIONS_H_
#define _OPTIMIZATIONS_H_

class BitVec;

void collapseBlocks(BlockStmt* block);
void removeUnnecessaryGotos(FnSymbol* fn);
void removeUnusedLabels(FnSymbol* fn);
void localCopyPropagation(FnSymbol* fn);
void localReferencePropagation(FnSymbol* fn);
void globalCopyPropagation(FnSymbol* fn);
void gpuFlattenArgs();
void eliminateSingleAssignmentReference(Map<Symbol*,Vec<SymExpr*>*>& defMap,
                                        Map<Symbol*,Vec<SymExpr*>*>& useMap,
                                        Symbol* var);
void singleAssignmentRefPropagation(FnSymbol* fn);
void deadVariableElimination(FnSymbol* fn);
void deadExpressionElimination(FnSymbol* fn);
void deadCodeElimination(FnSymbol* fn);

void liveVariableAnalysis(FnSymbol* fn,
                          Vec<Symbol*>& locals,
                          Map<Symbol*,int>& localID,
                          Vec<SymExpr*>& useSet,
                          Vec<SymExpr*>& defSet,
                          Vec<BitVec*>& OUT);

void
buildDefUseChains(FnSymbol* fn,
                  Map<SymExpr*,Vec<SymExpr*>*>& DU,
                  Map<SymExpr*,Vec<SymExpr*>*>& UD);

void
freeDefUseChains(Map<SymExpr*,Vec<SymExpr*>*>& DU,
                 Map<SymExpr*,Vec<SymExpr*>*>& UD);

void
remoteValueForwarding(Vec<FnSymbol*>& fns);

void
narrowWideReferences();

#endif

class CombatSystem {
  int attack(int playerAtk, int enemyDef) {
    return (playerAtk - enemyDef).clamp(0, 999);
  }
}
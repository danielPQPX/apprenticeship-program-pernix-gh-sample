# Escenarios para Tic-Tac-Toe

## Behavior-Driven Development (BDD)

### Escenario: Inicio del Juego
- **Given**: El jugador entra en la página de Tic-Tac-Toe.
- **When**: El jugador elige iniciar un nuevo juego.
- **Then**: El tablero debe mostrarse vacío.
- **And**: El jugador debe poder elegir "X" o "O".
- **And**: Se debe mostrar de quién es el turno.

### Escenario: Realizar un Movimiento
- **Given**: Es el turno del jugador "X".
- **When**: El jugador selecciona una casilla vacía.
- **Then**: La casilla debe mostrar una "X".
- **And**: El turno debe cambiar al jugador "O".

### Escenario: Determinar el Ganador
- **Given**: El jugador "X" tiene dos marcas en una fila.
- **When**: Coloca una tercera marca en la fila.
- **Then**: El juego debe anunciar al jugador "X" como el ganador.

### Escenario: Empate
- **Given**: Todas las casillas están ocupadas sin un ganador.
- **When**: El último movimiento se realiza.
- **Then**: El juego debe anunciar un empate.

### Escenario: Reiniciar el Juego
- **Given**: El juego ha terminado.
- **When**: El jugador selecciona "Reiniciar".
- **Then**: El tablero debe reiniciarse.

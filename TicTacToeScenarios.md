# Escenarios para Tic-Tac-Toe

## Test-Driven Development (TDD)

### Test: Inicio del Juego
- Dado: El jugador abre la aplicación.
- Cuando: Se inicia una nueva partida.
- Entonces: La cuadrícula de 3x3 debe estar vacía.
- Y: Se debe poder elegir entre jugar como "X" o "O".
- Y: El turno actual debe mostrarse correctamente.

### Test: Realizar un Movimiento
- Dado: El jugador selecciona una casilla vacía.
- Cuando: Hace clic en la casilla.
- Entonces: Debe colocarse su marca ("X" o "O").
- Y: El turno debe pasar al otro jugador.

### Test: Determinar un Ganador
- Dado: Dos jugadores están jugando Tic-Tac-Toe.
- Cuando: Un jugador logra alinear tres de sus marcas en una fila, columna o diagonal.
- Entonces: El juego debe declarar al jugador como ganador.

### Test: Empate
- Dado: Todas las casillas están llenas y no hay alineación de tres marcas consecutivas.
- Cuando: El último movimiento se realiza.
- Entonces: El juego debe declarar un empate.

### Test: Reiniciar el Juego
- Dado: El jugador ha terminado un juego.
- Cuando: El jugador hace clic en el botón de reiniciar.
- Entonces: El tablero debe restablecerse a una cuadrícula vacía.

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

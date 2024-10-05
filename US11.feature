Feature: Ingresar cuenta existente

Como usuario registrado
Quiero poder iniciar sesión en mi cuenta de AuraHealth
Para acceder a mis recordatorios y recomendaciones personalizadas

Scenario: US11: Iniciar sesión
  Given que el usuario está en la pantalla de inicio
  When haga clic en "Iniciar sesión"
  Then se abrirá un formulario para ingresar su correo electrónico y contraseña
  And cuando introduzca los datos correctos y los envíe, se mostrará un mensaje de bienvenida
  And será redirigido al menú principal

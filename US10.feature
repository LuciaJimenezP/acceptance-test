Feature: Registro de cuenta nueva

Como usuario nuevo
Quiero poder registrarme en la aplicación
Para crear una cuenta y acceder a las funcionalidades de AuraHealth

Scenario: US10: Registro de usuario
  Given que el usuario instala la aplicación y la abre
  When haga clic en la opción "Registrar cuenta"
  Then se abrirá un formulario para ingresar sus datos personales (nombre, apellido, correo)
  And cuando complete el formulario y lo envíe, recibirá un mensaje de confirmación "¡Tu cuenta ha sido creada!"
  And será redirigido a la pantalla principal

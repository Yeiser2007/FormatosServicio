const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const email = document.getElementById('correo');
const user = document.getElementById('usuario');
const date = document.getElementById('fechaNacimiento');
const Nac = document.getElementById('nacionalidad');
const tel = document.getElementById('telefono');
const formulario = document.getElementById('formulario');

// Función para validar el correo electrónico
function validarCorreo() {
    const correoValor = email.value;
    const correoValido = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correoValor);
    
    if (!correoValido) {
        alert('Por favor, ingrese un correo electrónico válido.');
        email.focus();
        return false;
    }
    
    return true;
}

// Función para validar el nombre de usuario
function validarUsuario() {
    const usuarioValor = user.value;
    
    if (usuarioValor.length < 6) {
        alert('El nombre de usuario debe tener al menos 6 caracteres.');
        user.focus();
        return false;
    }
    
    return true;
}

// Función para validar el teléfono
function validarTelefono() {
    const telefonoValor = tel.value;
    const telefonoValido = /^[0-9]{10}$/.test(telefonoValor);
    
    if (!telefonoValido) {
        alert('El número de teléfono debe tener 10 dígitos numéricos.');
        tel.focus();
        return false;
    }
    
    return true;
}

btn1.addEventListener('click', () => {
    email.removeAttribute('readonly');
    user.removeAttribute('readonly');
    tel.removeAttribute('readonly');
    btn1.disabled = true;
    btn2.disabled = false;
});

btn2.addEventListener('click', (event) => {
    if (!validarCorreo() || !validarUsuario() || !validarTelefono()) {
        event.preventDefault(); // Detiene el envío del formulario si hay errores de validación
    } else {
        formulario.submit();
        btn1.disabled = false;
        btn2.disabled = true;
    }
});

function abrirTarjeta() {
    document.getElementById('overlay').style.display = 'block';
}

function cerrarTarjeta() {
    document.getElementById('overlay').style.display = 'none';
}

function cambiarContraseña() {
    // Agrega aquí la lógica para cambiar la contraseña
    const contraseñaActual = document.getElementById('contraseñaActual').value;
    const nuevaContraseña = document.getElementById('nuevaContraseña').value;
    const confirmarContraseña = document.getElementById('confirmarContraseña').value;

    // Verificar si la contraseña actual coincide (debes implementar esta lógica)
    if (contraseñaActual !== 'contraseña_actual_actual') {
        alert('La contraseña actual no es válida.');
        return false;
    }

    // Verificar si la nueva contraseña coincide con la confirmación
    if (nuevaContraseña !== confirmarContraseña) {
        alert('Las contraseñas no coinciden.');
        return false;
    }

    // Verificar si la nueva contraseña cumple con tus criterios de seguridad
    if (nuevaContraseña.length < 8 || !/\d/.test(nuevaContraseña)) {
        alert('La nueva contraseña debe tener al menos 8 caracteres y contener al menos un número.');
        return false;
    }

    alert('Contraseña cambiada exitosamente.');
    cerrarTarjeta();
}
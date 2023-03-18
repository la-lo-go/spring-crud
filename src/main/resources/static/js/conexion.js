window.onload = function () {
    cargarNotas().then(r => {
        console.log("Notas cargadas");
    });

    document.querySelector('#search-str').addEventListener('input', filter);
}

async function filter() {
    const search = document.querySelector('#search-str').value;

    const notasRequest = await fetch('/search?search=' + search, {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });

    const notas = await notasRequest.json();

    changeTable(notas);
}

async function cargarNotas() {
    try {
        const notasRequest = await fetch('/notas', {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            }
        });

        const notas = await notasRequest.json();
        changeTable(notas);
    } catch (error) {
        console.error(error);
    }
}

function changeTable(notas) {
    let tabla = "";

    for (let objNota of notas) {
        const id = objNota.id;
        const nombre = objNota.nombre;
        const apellidos = objNota.apellidos;
        const nota = objNota.nota;

        tabla += `
            <tr>
                <td>${id}</td>
                <td>${nombre}</td>                   
                <td>${apellidos}</td>
                <td>${nota}</td>
                <td> ${createButtonEditNota(id, nombre, apellidos, nota)} </td>
                <td> ${createDeleteButton(id)} </td>
            </tr>
        `;
    }

    document.querySelector('#table-notas-data').innerHTML = tabla;
}

function createButtonEditNota(id, nombre, apellidos, nota) {
    return `<i class="fa-solid fa-pen-to-square" role="button" onclick="showEditForm(${id}, '${nombre}', '${apellidos}', ${nota})"></i>`;
}

function createDeleteButton(id) {
    return `<i class="fa-sharp fa-solid fa-trash red" role="button" onclick="deleteNota(${id})"></i>`;
}

async function insertarNota() {
    event.preventDefault(); // que se recargue la página al enviar
    const form = document.querySelector('#nota-alumno');
    const alumno = {
        nombre: form.nombre.value,
        apellidos: form.apellidos.value,
        nota: form.nota.value
    };

    let response = await fetch('/insertar', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(alumno)
    })

    if (response.ok) {
        await cargarNotas();
    }
}

async function editNota(id) {
    event.preventDefault();

    const nota = {
        id: id,
        nombre: document.querySelector('#nombre-edit').value,
        apellidos: document.querySelector('#apellidos-edit').value,
        nota: document.querySelector('#nota-edit').value
    };

    let response = await fetch('/modificar-nota/' + id, {
        method: 'POST',
        body: JSON.stringify(nota),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    })

    if (response.ok) {
        await cargarNotas();
    }
}

async function deleteNota(id) {
    let response = await fetch('/notas/' + id, {
        method: 'DELETE',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    })

    if (response.ok) {
        await cargarNotas();
    }
}

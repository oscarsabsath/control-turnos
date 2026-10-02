# Sistema de Gestión de Responsabilidades y Turnos (Viernes y Sábado)

Aplicación web interactiva para la gestión de colaboradores y asignación de turnos y responsabilidades ministeriales (**Predicación**, **Alabanza**, **Diaconisas**, **Diáconos** y **Audiovisual**), con prevención estricta de colisiones, almanaque exclusivo de fines de semana y diseño responsivo para móviles.

---

## 🎯 Requisitos Implementados

1. **Directorio de Hermanos / Colaboradores**:
   - Registro, consulta y eliminación de colaboradores.
   - Datos de contacto (correo y teléfono/WhatsApp).
   - Habilitación universal: cualquier hermano puede servir en cualquiera de las cinco áreas.
   
2. **Asignación Exclusiva para Viernes y Sábado**:
   - Validación en tiempo real y al enviar: solo se permiten fechas correspondientes a **Viernes** o **Sábado**.

3. **Cinco Ministerios / Áreas**:
   - 📖 **Predicación** (Azul)
   - 🎵 **Alabanza** (Ámbar / Naranja)
   - 🌸 **Diaconisas** (Rosa / Fucsia)
   - 🤝 **Diáconos** (Verde)
   - 🎥 **Audiovisual** (Púrpura / Violeta)

4. **Bloqueo Estricto de Colisiones (Regla de Negocio)**:
   - Si se intenta asignar a un colaborador que ya tiene una responsabilidad en esa fecha en cualquier ministerio:
   - El sistema bloquea de inmediato mostrando la alerta:
     > *"Tiene que cambiar la fecha para este colaborador porque ya tiene un turno asignado ese día."*

5. **Almanaque en 8 Columnas (Los 8 Días de Asignación del Mes)**:
   - **Distribución de 8 Columnas**: `Viernes (Sem 1)` | `Sábado (Sem 1)` | `Viernes (Sem 2)` | `Sábado (Sem 2)` | `Viernes (Sem 3)` | `Sábado (Sem 3)` | `Viernes (Sem 4)` | `Sábado (Sem 4)`.
   - **Desglose de Ministerios en cada día**: Cada columna contiene los espacios para **Predicación**, **Alabanza**, **Diaconisas**, **Diáconos** y **Audiovisual** de esa fecha.
   - **Botón `+` de Asignación Rápida**: Para asignar responsabilidades directamente con 1 solo clic.
   - Navegación mensual y filtro interactivo por área.

6. **Control de Acceso y Modo de Usuario (Seguridad por Contraseña)**:
   - **👁️ Modo Lectura (Público)**: Cualquier persona puede ingresar al enlace, consultar el calendario de 8 columnas, filtrar ministerios y ver detalles de turnos sin modificar nada. Los botones de edición y eliminación se ocultan automáticamente.
   - **🔓 Modo Editor (Administrador)**: Los usuarios que ingresan la contraseña pueden crear, editar y eliminar turnos, registrar hermanos y gestionar el sistema.
   - **Contraseña por defecto**: `1234` (se puede cambiar en cualquier momento desde el botón **"⚙️ Clave"**).

7. **Diseño Compacto y Responsivo**:
   - Letra optimizada y diseño adaptable para visualización cómoda en monitores de PC y teléfonos celulares.

8. **Exportación de Informes Mensuales (PDF y Excel)**:
   - **🖨️ Imprimir / PDF**: Genera una vista limpia y elegante de las 4 semanas del mes con sus 4 ministerios, lista para imprimir en papel o guardar como PDF.
   - **📊 Excel (.csv)**: Descarga inmediata de un archivo compatible con Microsoft Excel (con codificación UTF-8 para tildes y caracteres en español) con los turnos, fechas, ministerios y teléfonos de contacto.

9. **Persistencia y Respaldo**:
   - Guarda los cambios automáticamente en `localStorage` del navegador.
   - Botón para descargar respaldo de datos completo en formato `.json`.

---

## 🚀 Cómo Usar la Aplicación

1. **Abrir directamente en el navegador**:
   - Dirígete en el explorador de archivos a:
     `C:\Users\0scar\.gemini\antigravity\scratch\control-turnos\`
   - Haz doble clic sobre el archivo [index.html](file:///C:/Users/0scar/.gemini/antigravity/scratch/control-turnos/index.html) para abrirlo en Google Chrome, Microsoft Edge o cualquier navegador.
   - No requiere instalar Node ni ningún servidor web externo; funciona de forma 100% autónoma y lista para Vercel.

2. **Ejecutar en VS Code**:
   - Abre la carpeta `C:\Users\0scar\.gemini\antigravity\scratch\control-turnos\` en VS Code y presiona `F5`.

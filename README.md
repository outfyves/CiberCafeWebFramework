# 🖥️ CiberCafe Management System - Core Module
## Evidencia: GA7-220501096-AA3-EV01
### Codificación de módulos del software (Web) con Java Frameworks

Este proyecto representa la entrega del módulo central (**Core**) de un sistema de gestión para un Cibercafé, desarrollado utilizando el ecosistema de **Spring Boot**. Cumple con los requerimientos de la fase de codificación aplicando arquitecturas modernas y estándares de la industria.

Repocitorio principal: https://github.com/outfyves/CiberCafeWeb
---

## 🚀 Funcionalidades Actuales
Esta versión se centra en el control administrativo y operativo del negocio:

1.  **Módulo de Gestión de Equipos (PCs):**
    *   Inventario dinámico de terminales.
    *   Control de estados: Disponible, Ocupado, Mantenimiento.
    *   Configuración de tarifas personalizadas por equipo.
2.  **Control de Sesiones de Uso:**
    *   Inicio de sesión con selección de cliente (registrado o general).
    *   Modos de tiempo: Libre (cronómetro) o Prepago (tiempo fijo con convertidor de minutos).
    *   Cobro automático integrado según tarifa y tiempo transcurrido.
3.  **Gestión de Clientes:**
    *   Base de datos centralizada de usuarios.
    *   Control de estados de cliente (Activo, Inactivo, Moroso).
4.  **Dashboard Administrativo:**
    *   Estadísticas en tiempo real de disponibilidad y ocupación.
    *   Historial de sesiones recientes sincronizado con la base de datos MySQL.

---

## 🛠️ Cumplimiento de la Evidencia
*   **Framework Utilizado:** Spring Boot 3.2.0 (Java 17+).
*   **Arquitectura:** MVC (Model-View-Controller) con API REST.
*   **Persistencia:** JPA / Hibernate sobre MySQL.
*   **Estándares de Codificación:** Nombres de clases CamelCase, encapsulamiento de datos (Getters/Setters), y controladores REST estructurados.
*   **Comentarios:** Todo el código fuente en Java ha sido comentado siguiendo estándares técnicos para facilitar la mantenibilidad.
*   **Herramientas de Versionamiento:** Proyecto gestionado y subido mediante Git/GitHub.

---

## 💻 Instrucciones de Ejecución

### Requisitos Previos
*   **Java JDK 17** o superior.
*   **Maven** instalado.
*   **MySQL Server** en ejecución con una base de datos llamada `cibercafe_db`.

### En Linux 🐧
1.  Abre una terminal en la carpeta del proyecto.
2.  Ejecuta el comando:
    ```bash
    mvn spring-boot:run
    ```
3.  Abre tu navegador en: `http://localhost:8080`

### En Windows 🪟
1.  Abre la terminal (**CMD** o **PowerShell**) en la carpeta del proyecto.
2.  Ejecuta el comando:
    ```powershell
    mvn spring-boot:run
    ```
3.  Abre tu navegador en: `http://localhost:8080`

### 🛠️ Ejecución en NetBeans IDE (Recomendado para evaluadores)
Este proyecto es un proyecto **Maven** estándar, lo que facilita su revisión en NetBeans:
1.  **Abrir Proyecto:** `File` -> `Open Project` -> Seleccionar la carpeta `JESUS_MORALES_AA3_EV01`.
2.  **Cargar Dependencias:** Si aparecen alertas, hacer clic derecho en el proyecto y seleccionar **"Clean and Build"**.
3.  **Ejecutar:** Clic derecho en el proyecto -> **Run**.
4.  **Clase Principal:** Si el IDE pregunta, seleccionar `com.cibercafe.CiberCafeApplication`.

---

## 📦 Datos del Aprendiz
*   **Nombre:** JESUS MORALES
*   **Evidencia:** GA7-220501096-AA3-EV01
*   **Programa:** Análisis y Desarrollo de Software (SENA)

# Complicated Example

## User input

```text
Tenemos que elegir entre PostgreSQL y MongoDB para una app de gestion de turnos medicos. Hay reportes, auditoria y busquedas por paciente. Cual conviene?
```

## DART block

```xml
<dart>
<deconstruct>La decision tecnica tiene requisitos de auditoria, reportes, busqueda y consistencia. Faltan escala, equipo, compliance y patrones de consulta.</deconstruct>
<analyze system="complicated" confidence="0.86">La relacion causa-efecto es analizable con experiencia tecnica: modelo de datos, consistencia, consultas y operacion determinan la opcion.</analyze>
<recognize patterns="expert-analysis; compliance-sensitive" cobra_risk="low" delayed_loops="operational cost and reporting pain may appear after launch"/>
<test>Comparar 5 consultas criticas, requisitos de auditoria y migracion de datos antes de decidir.</test>
</dart>
```

## Final response

**Classification**

Esto es Complicado: no se resuelve por intuicion, pero si por analisis tecnico y requisitos.

**Assumptions**

- Los turnos, pacientes y auditoria necesitan consistencia fuerte.
- Los reportes importan desde el inicio.
- El equipo puede operar una base relacional.

**Options**

- PostgreSQL: mejor para integridad, reportes, auditoria, transacciones y SQL.
- MongoDB: util si el esquema cambia mucho y las consultas son documentales, pero puede complicar reportes y consistencia.
- Hibrido: solo si hay una necesidad clara de busqueda/documentos; agrega operacion.

**Recommendation**

Usaria PostgreSQL como base principal. El criterio decisivo es auditoria + reportes + consistencia en datos clinicos y turnos.

**Missing Data**

Para subir confianza: volumen esperado, consultas principales, requisitos legales y si necesitan busqueda full-text avanzada.

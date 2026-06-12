# Chaotic Example

## User input

```text
Se filtro una clave de produccion en un repo publico y no sabemos si alguien la uso. Que hacemos ahora?
```

## DART block

```xml
<dart>
<deconstruct>Hay exposicion activa de credenciales, posible acceso no autorizado y riesgo inmediato. La prioridad es contener antes de investigar causa raiz.</deconstruct>
<analyze system="chaotic" confidence="0.95">La situacion esta bajo presion temporal: el dano puede continuar mientras se analiza.</analyze>
<recognize patterns="security-incident; containment-first" cobra_risk="low" delayed_loops="abuse may appear later in logs, billing, data access, or alerts"/>
<test>Revocar credencial, cortar acceso, revisar logs minimos y luego reclasificar para investigacion.</test>
</dart>
```

## Final response

**Stabilize Now**

1. Revoca la clave filtrada inmediatamente.
2. Crea una clave nueva solo para los servicios que la necesitan.
3. Elimina la clave del repo y del historial publico si es posible, pero no confies en eso como contencion.
4. Revisa logs de uso de esa clave desde antes de la filtracion hasta ahora.
5. Activa alertas o bloqueo temporal si hay signos de abuso.

**Containment**

Pausa integraciones no criticas que dependian de esa credencial hasta confirmar que usan la clave nueva.

**Minimum Signal**

La clave vieja debe quedar inutilizable y los logs no deben mostrar uso posterior a la revocacion.

**Reclassify**

Cuando la exposicion este contenida, pasar a Complicado para investigar alcance, causa raiz y rotacion de secretos.

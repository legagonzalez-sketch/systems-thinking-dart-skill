# Complex Example

## User input

```text
Lanzamos un programa de referidos para vendedores, pero no sabemos si va a mejorar ventas o solo traer leads malos. Como lo probamos?
```

## DART block

```xml
<dart>
<deconstruct>Hay incentivos, comportamiento humano, calidad de leads y posible impacto comercial diferido. El resultado depende de interacciones entre vendedores, clientes y reglas del incentivo.</deconstruct>
<analyze system="complex" confidence="0.91">La relacion causa-efecto es no lineal y emergente: el incentivo puede cambiar cantidad, calidad y conducta, y el patron aparece al probar.</analyze>
<recognize patterns="incentive-design; cobra-effect-risk; delayed-feedback" cobra_risk="high" delayed_loops="lead quality and churn may be visible weeks after referral volume rises"/>
<test>Ejecutar piloto limitado con metrica de calidad, no solo volumen, y stop rule por deterioro de conversion.</test>
</dart>
```

## Final response

**Classification**

Esto es Complejo: el incentivo puede aumentar referidos, pero tambien puede degradar calidad. No conviene prometer resultado deterministico.

**Minimum Viable Experiment**

Piloto de 2 semanas con un grupo pequeno de vendedores. Pagar el incentivo solo por lead calificado o venta validada, no por contacto cargado.

**Metrics**

- Success: aumento de ventas netas o pipeline calificado sin bajar conversion.
- Failure: suben los leads pero cae la tasa de conversion o aumenta el descarte.
- Leading signal: porcentaje de referidos que pasan calificacion inicial.

**Stop Rule**

Pausar si la conversion de referidos cae por debajo del baseline durante 2 cortes seguidos o si aparecen cargas duplicadas/falsas.

**Review Loop**

Comparar semanalmente contra el mes anterior: cantidad, conversion, ticket, descarte y tiempo hasta cierre.

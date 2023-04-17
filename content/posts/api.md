---
title: "💻 Qué es una API?"
date: 2023-04-17T00:54:03-04:00
summary: "Qué es una API, para qué sirven y cómo creé una. Para entender este post, no es necesario saber de tecnología, pero si debería interesarte cómo funcionan las aplicaciones."
categorías: "Tecnología"
author: "Anwar Jamis"
---
Como escribí en [este post](/posts/goals), este año me propuse aprender cosas nuevas que me puedan ayudar a hacer lo que quiero en un futuro y una de esas cosas es desarrollar más. En mi trabajo y en el mundo de desarrollo en general se habla demasiado de las APIs, así que como parte de mi aprendizaje de desarrollo, me propuse hacer mi propia API.

## WTF es una API?

En simple: Una API es una forma de comunicación entre aplicaciones.

Por ejemplo tengo una aplicación de inversiones donde puedo comprar acciones de Apple. Obviamente, para poder comprar esas acciones, necesito saber el precio de la acción al momento que voy a comprar. Los más probable es que el dueño de esta aplicación de inversiones no sepa cuanto cuesta el precio de la acción de Apple en ese momento y tampoco quiere desarrollar toda la lógica que hay detrás para obtener ese dato, así que simplemente le pregunta a otra aplicación que si tiene desarrollada esa lógica y la usa como habilitante para entregar el servicio de compra y venta de acciones.

En resumen, las APIs sirven para que una aplicación A le de información a la aplicación B y así, esta pueda funcionar tranquilamente sin tener que calcular o crear la información/acción que la aplicación A le está entregando.

Cuando ingresamos a una página (por ejemplo este blog), escribimos la URL (www.anwarjamis.com) en nuestro navegador y este nos devuelve la página que estabamos buscando (texto y diseño bonito).

El funcionamiento de las APIs es muy similar. La aplicación A le pregunta algo a la aplicación mediante una URL y la aplicación B le responde con un archivo en un formato específico (json) para que la aplicación A la pueda leer fácil y rápido.


## Cómo creé mi propia API

**Paso 1: Elegir un tema**

Esto fue lo más fácil. Para los que me conocen, saben que soy fanático del fútbol, así que esta si o si era la mejor opción. Me propuse crear una API que entregue información del campeonato chileno.

Busqué algo que fuera fácil para desarrollar en un principio, porque mi meta es hacer una API, no compicarme mucho más con otras cosas, así que decidí que iba a disponibilizar una API que devuelva la información de la tabla del campeonato nacional actualizado.

**Paso 2: Cómo obtener la información**

La página de la ANFP al final de cada partido actualiza esta información, así que decidí hackearla y robarle la información. Esto, se hace con un método que se llama *web scraping* que consiste básicamente en leer la información que hay disponible en una página web.

Así que no, no estoy hackeando la página de la ANFP para robarles sus datos. Solo estoy diciendole a mi programa que lea la información que está ahí y la guarde en mi base de datos. Como es información que ellos tienen pública en su página web, creo que no es big deal.

**Paso 3: Mostrar la información**

Una vez que scrapeé la página de la ANFP y ya tengo la información en mi base de datos, mostrarla es muy fácil. Solo basta crear el archivo json y probarlo llamando la URL y ver si me entrega los datos reales.

Hasta ahora, todo funcionando.

**Paso 4: Mostrársela al mundo**

Hasta ahora todo esto estaba pasando solo en mi computador, por lo tanto, solo yo (o alguien que tenga mi computador y sepa hacerlo) podía ver la tabla del campeonato chileno actualizada con mi API, así que tuve que configurar un servicio que me permita tener una URL pública para que cualquier persona con internet pueda llamar a mi API.

Heroku es el servicio más típico para hacer esto, pero ya tengo una aplicación funcionando ahí y la segunda la cobran, así que decidí usar fly.io, que resultó ser casi igual de fácil para exponer mi API al universo.

Me gustó harto usar este servicio porque aprendí a configurar en una aplicación distinta que Heroku.

**Paso 5: Compartirla con el mundo**

Si quieres probar la API que creé, puedes ir al link que dejé más abajo donde hice una pequeñísima documentación. Al final hay un botón que te lleva directo a ver el json con la tabla actualizada.

[API Campeonato Nacional 🇨🇱](https://api-campeonato-chileno.fly.dev)

PD: Recuerda que esto está pensado para que otra aplicación lo lea, probablemente el formato json no es el mejor para el ojo humano.

## Próximos desafíos

Para seguir aprendiendo, quiero seguir mejorando esta API. Me gustaría agregar un nuevo servicio donde entregue la información de los partidos, de los goleadores del campeonato o datos históricos de cada equipo.

Además, hoy no es tan automático como parece, el scraper tengo que correrlo manualmente, por lo que me gustaría explorar turinas automáticas que hagan que la tabla se actualice cada una hora y así hacer que el servicio funcione 100% automático.

Estoy demasiado feliz por el resultado, aprendí muchísimo en el proceso y resultó ser más fácil de lo que pensaba. En mi trabajo todo el día hablamos de APIs y qué información deberíamos traer o exponer a otras aplicaciones y me pareció entretenido desarrollar mi propia API para entender el funcoinamiento de estas y así poder entender mejor qué es lo que hacemos o cómo nos comunicamos con otras empresas.

---
Puede que este post sea muchísimo más específico que los anteriores, pero lo quise compartir porque es parte de mi proceso de exploración y aprendizaje de cosas nuevas. Así que te agradezco por haber leído este post que puede que haya sido super técnico, pero que es fundamental en el proceso que estoy siguiendo hoy 🤍.

¡Cómo siempre! Si quieres suscribirte puedes hacerlo en el siguiente formulario 👇🏼👇🏼👇🏼.

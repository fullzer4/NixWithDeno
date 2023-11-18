import { Application } from "https://deno.land/x/oak@v12.6.1/mod.ts";

const app = new Application();

app.use((ctx) => {
  ctx.response.body = "Hello world!";
});

await app.listen({ port: 8000 });

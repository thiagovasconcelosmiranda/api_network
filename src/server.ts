import express, { urlencoded, Router, Response, Request } from 'express';
import cors from 'cors';

const app = express();
const port = process.env.PORT ?? 4000;
app.use(express.json());
app.use(cors());
app.use(urlencoded({extended: false}));

app.get('/ping', (res: Response, req: Request) => {
      res.json({pong: true});
})

app.listen(port || 4000, () => {
    console.log(`Server: http://localhost:${port}`);
});



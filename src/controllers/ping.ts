import { Request, Response } from "express";

export const ping = (res: Response, req: Request) => {
   res.json({pong: true});
}
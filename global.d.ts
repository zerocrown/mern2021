declare namespace Express {
    export interface Response {
      render(view: string, options?: object): void;
    }
  }
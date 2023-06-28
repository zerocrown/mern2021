import express from 'express'


export const index = async (req: express.Request, res: express.Response) => {
    try {
      
      res.render('index')
    } catch (error) {
      console.log(error)
    }
  }
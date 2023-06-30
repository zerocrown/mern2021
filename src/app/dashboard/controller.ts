import express from "express";

export const index = async (req: express.Request, res: express.Response) => {
  try {
    const { name, email, id, status } = req.session.user;

    res.render("index", {
      data: {
        name,
        title: "Halaman Dashboard",
      },
    });
  } catch (error) {
    console.log(error);
  }
};

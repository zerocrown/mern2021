import express from 'express'
const router = express.Router()


import {action_create, action_delete, action_edit, index_view, view_create, view_edit} from './controller'

// views
router.get('/', index_view)
router.get('/create', view_create)
router.get('/edit/:id', view_edit)


// actions
router.post('/create', action_create)
router.put('/edit/:id', action_edit)
router.delete('/delete/:id', action_delete)


export default router
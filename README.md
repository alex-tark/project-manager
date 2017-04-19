# project-manager

Пути для API, которые я успел сделать:

app.post    '/project',     (req, res) -> project.create req, res

app.get     '/project',     (req, res) -> project.retrieve req, res

app.get     '/project/:id', (req, res) -> project.retrieve req, res

app.put     '/project/:id', (req, res) -> project.update req, res

app.delete  '/project/:id', (req, res) -> project.delete req, res

app.post    '/comment',     (req, res) -> comment.create req, res

app.get     '/comment',     (req, res) -> comment.retrieve req, res

app.get     '/comment/:id', (req, res) -> comment.retrieve req, res

app.put     '/comment/:id', (req, res) -> comment.update req, res

app.delete  '/comment/:id', (req, res) -> comment.delete req, res

app.post    '/user',     (req, res) -> user.create req, res

app.get     '/user',     (req, res) -> user.retrieve req, res

app.get     '/user/:id', (req, res) -> user.retrieve req, res

app.put     '/user/:id', (req, res) -> user.update req, res

app.delete  '/user/:id', (req, res) -> user.delete req, res

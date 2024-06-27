import { Router } from 'express';
import cProcess from '../controllers/cProcess'

class ProcessRouter {
    public router: Router;
    constructor() {
      this.router = Router();
      this.routes();
    }

    routes() {
        this.router.post("/", cProcess.proccValues);
      }
}

const processRouter = new ProcessRouter();
export default processRouter.router;
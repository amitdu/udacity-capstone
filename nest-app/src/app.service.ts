import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): any {
    return 'Hello World!';
  }
  getHealth(): any {
    return { sucess: true, data: +new Date() };
  }
}

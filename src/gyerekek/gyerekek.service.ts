import { Injectable } from '@nestjs/common';
import { CreateGyerekekDto } from './dto/create-gyerekek.dto';
import { UpdateGyerekekDto } from './dto/update-gyerekek.dto';
import { PrismaService } from 'src/prisma.service';
import { Jatekok } from 'src/jatekok/entities/jatekok.entity';

@Injectable()
export class GyerekekService {
  db:PrismaService

  constructor(db:PrismaService){
    this.db=db
  }

  async addJatek(id:number){
    const gy=await this.db.gyerek.findUnique({
      where:{
        id:id
      }
    })
    if((gy).joVoltE==true){
      return this.db.gyerek.update({
        where:{
          id:id
        },
        data:gy
      })
    }
  }

  create(createGyerekekDto: CreateGyerekekDto) {
    return this.db.gyerek.create({
      data:createGyerekekDto
    });
  }

  findAll() {
    return this.db.gyerek.findMany();
  }

  findOne(id: number) {
    return this.db.gyerek.findUnique({
      where:{
        id:id
      }
    });
  }

  update(id: number, updateGyerekekDto: UpdateGyerekekDto) {
    return this.db.gyerek.update({
      where:{
        id:id
      },
      data:updateGyerekekDto
    });
  }

  remove(id: number) {
    return this.db.gyerek.delete({
      where:{
        id:id
      }
    });
  }
}

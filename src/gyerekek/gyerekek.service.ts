import { Injectable } from '@nestjs/common';
import { CreateGyerekekDto } from './dto/create-gyerekek.dto';
import { UpdateGyerekekDto } from './dto/update-gyerekek.dto';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class GyerekekService {
  db:PrismaService

  constructor(db:PrismaService){
    this.db=db
  }

  async addJatek(gyerekId: number, jatekId: number){
    const gyerek=await this.db.gyerek.findUnique({
      where:{
        id:gyerekId
      }
    });
    if(!gyerek){
      throw new Error("Nem található");
    }
    if(gyerek.joVoltE==true){
      return this.db.gyerekOnJatek.create({
        data:{
          gyerekId,
          jatekId
        }
      })
    }
    else{
      return "Nem kap"
    }
  }

  async create(createGyerekekDto: CreateGyerekekDto) {
    return await this.db.gyerek.create({
      data:createGyerekekDto
    });
  }

  async findAll() {
    return await this.db.gyerek.findMany();
  }

  async findOne(id: number) {
    const gy=await this.db.gyerek.findUnique({
      where:{
        id:id
      }
    })
    try {
      return gy ?? "Nincs ilyen id";
    } catch (error) {
      return error;
    }
    }

  async update(id: number, updateGyerekekDto: UpdateGyerekekDto) {

    return await this.db.gyerek.update({
      where:{
        id:id
      },
      data:updateGyerekekDto
    });
  }

  async remove(id: number) {
    return await this.db.gyerek.delete({
      where:{
        id:id
      }
    });
  }
}

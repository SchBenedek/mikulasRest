import { Injectable } from '@nestjs/common';
import { CreateJatekokDto } from './dto/create-jatekok.dto';
import { UpdateJatekokDto } from './dto/update-jatekok.dto';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class JatekokService {
  db:PrismaService

  constructor(db:PrismaService){
    this.db=db
  }
  
  async create(createJatekokDto: CreateJatekokDto) {
    return await this.db.jatek.create({
      data:createJatekokDto
    });
  }

  async findAll() {
    return await this.db.jatek.findMany();
  }

  async findOne(id: number) {
    const j=await this.db.jatek.findUnique({
      where:{
        id:id
      }
    })
    try {
      return j ?? "Nincs ilyen id";
    } catch (error) {
      return error;
    };
  }

  async update(id: number, updateJatekokDto: UpdateJatekokDto) {
    return await this.db.jatek.update({
      where:{
        id:id
      },
      data:updateJatekokDto
    });
  }

  async remove(id: number) {
    return await this.db.jatek.delete({
      where:{
        id:id
      }
    });
  }
}

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
  
<<<<<<< HEAD
  async create(createJatekokDto: CreateJatekokDto) {
    return await this.db.jatek.create({
=======
  create(createJatekokDto: CreateJatekokDto) {
    return this.db.jatek.create({
>>>>>>> 785302f35f85c3c48a4bfb0f04949a25f1362e6a
      data:createJatekokDto
    });
  }

<<<<<<< HEAD
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
=======
  findAll() {
    return this.db.jatek.findMany();
  }

  findOne(id: number) {
    return this.db.jatek.findUnique({
      where:{
        id:id
      }
    });
  }

  update(id: number, updateJatekokDto: UpdateJatekokDto) {
    return this.db.jatek.update({
>>>>>>> 785302f35f85c3c48a4bfb0f04949a25f1362e6a
      where:{
        id:id
      },
      data:updateJatekokDto
    });
  }

<<<<<<< HEAD
  async remove(id: number) {
    return await this.db.jatek.delete({
=======
  remove(id: number) {
    return this.db.jatek.delete({
>>>>>>> 785302f35f85c3c48a4bfb0f04949a25f1362e6a
      where:{
        id:id
      }
    });
  }
}

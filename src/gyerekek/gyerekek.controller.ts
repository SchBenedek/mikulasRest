import { Controller, Get, Post, Body, Patch, Param, Delete, ParseIntPipe, Put } from '@nestjs/common';
import { GyerekekService } from './gyerekek.service';
import { CreateGyerekekDto } from './dto/create-gyerekek.dto';
import { UpdateGyerekekDto } from './dto/update-gyerekek.dto';

@Controller('gyerekek')
export class GyerekekController {
  constructor(private readonly gyerekekService: GyerekekService) {}

  @Post()
  create(@Body() createGyerekekDto: CreateGyerekekDto) {
    return this.gyerekekService.create(createGyerekekDto);
  }

  @Put(':gyerekId/jatekok/:jatekId')
  async addJatek(
    @Param('gyerekId', ParseIntPipe) gyerekId: number,
    @Param('jatekId', ParseIntPipe) jatekId: number,
  ) {
    return this.gyerekekService.addJatek(gyerekId, jatekId);
  }

  @Get()
  findAll() {
    return this.gyerekekService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.gyerekekService.findOne(+id);
    }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateGyerekekDto: UpdateGyerekekDto) {
    return this.gyerekekService.update(+id, updateGyerekekDto);
  }

<<<<<<< HEAD
  @Patch("addJatek/:id")
  addJatek(@Param('id') id:string){
    return this.gyerekekService.addJatek(+id);
  }
=======
>>>>>>> 785302f35f85c3c48a4bfb0f04949a25f1362e6a
  
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.gyerekekService.remove(+id);
  }
}

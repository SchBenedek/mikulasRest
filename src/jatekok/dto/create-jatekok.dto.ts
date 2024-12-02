import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateJatekokDto {
    @IsNotEmpty()
    @IsString()
    megnevezes: string;
    @IsNotEmpty()
    @IsString()
    anyag: string;
    @IsNotEmpty()
    @IsNumber()
    suly: number;
}

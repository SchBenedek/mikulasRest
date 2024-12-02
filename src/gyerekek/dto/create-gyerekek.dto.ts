import { IsBoolean, IsNotEmpty, IsString } from "class-validator";

export class CreateGyerekekDto {
    @IsNotEmpty()
    @IsString()
    nev: string;
    @IsNotEmpty()
    @IsString()
    cim: string;
    @IsNotEmpty()
    @IsBoolean()
    joVoltE: boolean;
}

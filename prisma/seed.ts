import { faker } from '@faker-js/faker';
import { PrismaClient } from '@prisma/client';
import { min } from 'class-validator';
const prisma = new PrismaClient()

async function main() {
    for(let i=0; i<20; i++){
        await prisma.gyerek.create({
            data:{
                nev: faker.person.fullName().toString(), // before version 9.1.0, use userName()
                cim: faker.location.country()+" - "+faker.location.city()+" - "+faker.location.street()+" - "+faker.location.street()+" - "+faker.number.int({min:1}),
                joVoltE: faker.datatype.boolean(0.5)
            }
        }),
        await prisma.jatek.create({
            data:{
                megnevezes: faker.airline.airplane().name,
                anyag: faker.science.chemicalElement().name,
                suly: faker.number.int({min:0, max:100})
            }
        })
    };
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })
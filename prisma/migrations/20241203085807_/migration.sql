-- CreateTable
CREATE TABLE `Jatek` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `megnevezes` VARCHAR(191) NOT NULL,
    `anyag` VARCHAR(191) NOT NULL,
    `suly` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Gyerek` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nev` VARCHAR(191) NOT NULL,
    `cim` VARCHAR(191) NOT NULL,
    `joVoltE` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gyerekOnJatek` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `gyerekId` INTEGER NOT NULL,
    `jatekId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `gyerekOnJatek` ADD CONSTRAINT `gyerekOnJatek_gyerekId_fkey` FOREIGN KEY (`gyerekId`) REFERENCES `Gyerek`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `gyerekOnJatek` ADD CONSTRAINT `gyerekOnJatek_jatekId_fkey` FOREIGN KEY (`jatekId`) REFERENCES `Jatek`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - Added the required column `group_password` to the `friends_groups` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "friends_groups" ADD COLUMN     "group_password" TEXT NOT NULL,
ADD COLUMN     "party_time" TEXT,
ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "updated_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "image_url" TEXT;

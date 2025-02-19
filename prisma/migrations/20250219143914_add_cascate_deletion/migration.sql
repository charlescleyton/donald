-- DropForeignKey
ALTER TABLE "menuCategory" DROP CONSTRAINT "menuCategory_restaurantId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_restaurantId_fkey";

-- DropForeignKey
ALTER TABLE "orderProduct" DROP CONSTRAINT "orderProduct_orderId_fkey";

-- DropForeignKey
ALTER TABLE "orderProduct" DROP CONSTRAINT "orderProduct_productId_fkey";

-- DropForeignKey
ALTER TABLE "product" DROP CONSTRAINT "product_menuCategoryId_fkey";

-- DropForeignKey
ALTER TABLE "product" DROP CONSTRAINT "product_restaurantId_fkey";

-- AddForeignKey
ALTER TABLE "menuCategory" ADD CONSTRAINT "menuCategory_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "Restaurant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product" ADD CONSTRAINT "product_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "Restaurant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product" ADD CONSTRAINT "product_menuCategoryId_fkey" FOREIGN KEY ("menuCategoryId") REFERENCES "menuCategory"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "Restaurant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orderProduct" ADD CONSTRAINT "orderProduct_productId_fkey" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orderProduct" ADD CONSTRAINT "orderProduct_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "order"("id") ON DELETE CASCADE ON UPDATE CASCADE;

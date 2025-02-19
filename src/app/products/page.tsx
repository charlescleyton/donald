import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";

const ProductPage = () => {
  return (
    <div className="rounded-lg border border-red-500 p-5">
      <h1 className="text-red-500">Produtos</h1>
      <Button>Comprar</Button>
      <Input placeholder="Digite o nome do produto" />
    </div>
  );
};

export default ProductPage;

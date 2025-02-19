import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";

const ProductPage = () => {
  return (
    <div className="p-5 border border-red-500 rounded-lg">
      <h1 className="text-red-500">Produtos</h1>
      <Button>Comprar</Button>
      <Input placeholder="Digite o nome do produto" />
    </div>
  );
};

export default ProductPage;

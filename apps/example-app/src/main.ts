import { codegen } from "example-codegen";
import { GREETING } from "example-lib/constant";
export const main = () => {
  // eslint-disable-next-line no-console
  console.log(`${GREETING} from ${codegen()}`);
};

void main();

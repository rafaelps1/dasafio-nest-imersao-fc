import type { Coord } from '@prisma/client';

export class CreateRouteDto {
  name: string;
  source: Coord;
  destination: Coord;
}

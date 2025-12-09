declare module '@apiverve/cuidgenerator' {
  export interface cuidgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface cuidgeneratorResponse {
    status: string;
    error: string | null;
    data: CuidGeneratorData;
    code?: number;
  }


  interface CuidGeneratorData {
      cuids:              string[];
      count:              number;
      format:             string;
      collisionResistant: boolean;
      sortable:           boolean;
  }

  export default class cuidgeneratorWrapper {
    constructor(options: cuidgeneratorOptions);

    execute(callback: (error: any, data: cuidgeneratorResponse | null) => void): Promise<cuidgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: cuidgeneratorResponse | null) => void): Promise<cuidgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<cuidgeneratorResponse>;
  }
}

declare module '@apiverve/cuidgenerator' {
  export interface cuidgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface cuidgeneratorResponse {
    status: string;
    error: string | null;
    data: CuidGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CuidGeneratorData {
      cuids:              (null | string)[];
      count:              number | null;
      format:             null | string;
      collisionResistant: boolean | null;
      sortable:           boolean | null;
  }

  export default class cuidgeneratorWrapper {
    constructor(options: cuidgeneratorOptions);

    execute(callback: (error: any, data: cuidgeneratorResponse | null) => void): Promise<cuidgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: cuidgeneratorResponse | null) => void): Promise<cuidgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<cuidgeneratorResponse>;
  }
}

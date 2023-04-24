import { TestBed } from '@angular/core/testing';

import { UsuariooService } from './usuarioo.service';

describe('UsuariooService', () => {
  let service: UsuariooService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(UsuariooService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

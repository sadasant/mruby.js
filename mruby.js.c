#include <stdint.h>
#include <stdio.h>

#include "mruby.h"
#include "mruby/compile.h"
#include "mruby/irep.h"

int mruby_run_bytecode(mrb_state* mrb, const uint8_t *bc,
                                  int print_level)
{
  mrb_value result = mrb_load_irep(mrb, bc);
  if (mrb->exc && (print_level > 0)) {
    mrb_p(mrb, mrb_obj_value(mrb->exc));
    mrb->exc = 0;
    return 1;
  }

  if (print_level > 1) {
    mrb_p(mrb, result);
  }
  return 0;
}

int mruby_run_source(mrb_state* mrb, const char *s, int print_level)
{
  mrb_value result = mrb_load_string(mrb, s);
  if (mrb->exc && (print_level > 0)) {
    mrb_p(mrb, mrb_obj_value(mrb->exc));
    mrb->exc = 0;
    return 1;
  }

  if (print_level > 1) {
    mrb_p(mrb, result);
  }
  return 0;
}

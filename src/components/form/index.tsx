import { createFormHook, createFormHookContexts } from "@tanstack/react-form";
import { TextField } from "./text-field";
import { SelectField } from "./select-field";
import { CheckboxField } from "./checkbox-field";
import { SubmitButton } from "./submit-button";
import { PriceField } from "./price-field";

export const { fieldContext, useFieldContext, formContext, useFormContext } =
  createFormHookContexts();

export const { useAppForm, withForm } = createFormHook({
  fieldComponents: {
    TextField,
    CheckboxField,
    SelectField,
    PriceField,
  },
  formComponents: {
    SubmitButton,
  },
  fieldContext,
  formContext,
});

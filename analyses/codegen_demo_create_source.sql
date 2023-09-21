{# set models_to_generate = codegen.get_models(directory='flight_demo') #}
{{ codegen.generate_model_yaml(
    model_names = ['stg_airline_info']
) }}
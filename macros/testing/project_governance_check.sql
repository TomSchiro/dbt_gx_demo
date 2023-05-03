{% macro project_governance_check() %}
    {{ log('Validating object: ' ~ this.identifier, info=True) }}


    {% if 'staging' in model.path %}

        {% if not model.name.startswith('stg_') %}
            {{ exceptions.warn('Invalid naming convention. Staging objects must start with "stg_": ' ~ model.path) }}
            {{log_governance_results( model.name, model.path,'Invalid naming convention. Staging objects must start with "stg_": ' )}}
        {% endif %}

    {% elif 'stage' in model.path %}

        {% if not model.name.startswith('v_') %}
            {{ exceptions.warn('Invalid naming convention. Stage objects must start with "stg_": ' ~ model.path) }}
             {{log_governance_results( model.name, model.path,'Invalid naming convention. Staging objects must start with "v_": ' )}}           
        {% endif %}

    {% elif 'processed' in model.path %}

        {% if not model.name.startswith('processed_') %}
            {{ exceptions.warn('Invalid naming convention. Processed objects must start with "processed_": ' ~ model.path) }}
            {{log_governance_results( model.name, model.path,'Invalid naming convention. Staging objects must start with "processed_": ' )}}
        {% endif %}

    {% elif 'hubs' in model.path %}

        {% if not model.name.startswith('hub_') %}
            {{ exceptions.warn('Invalid naming convention. Hub objects must start with "hub_": ' ~ model.path) }}
            {{log_governance_results( model.name, model.path,'Invalid naming convention. Staging objects must start with "hub_": ' )}}           
        {% endif %}

    {% elif 'links' in model.path %}

        {% if not model.name.startswith('link_') %}
            {{ exceptions.warn('Invalid naming convention. Link objects must start with "link_": ' ~ model.path) }}
            {{log_governance_results( model.name, model.path,'Invalid naming convention. Staging objects must start with "link_": ' )}}
        {% endif %}

    {% elif 'sats' in model.path %}

        {% if not model.name.startswith('sat_') %}
            {{ exceptions.warn('Invalid naming convention. Sat objects must start with "sat_": ' ~ model.path) }}
            {{log_governance_results( model.name, model.path,'Invalid naming convention. Staging objects must start with "sat_": ' )}}
        {% endif %}

    {% endif %}


{% endmacro %}



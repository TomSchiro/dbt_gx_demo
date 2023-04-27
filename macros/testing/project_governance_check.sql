{% macro project_governance_check() %}
    {{ log('Validating object: ' ~ this.identifier, info=True) }}


    {% if 'staging' in model.path %}

        {% if not model.name.startswith('stg_') %}
            {{ exceptions.warn('Invalid naming convention. Staging objects must start with "stg_": ' ~ model.path) }}
        {% endif %}

    {% elif 'stage' in model.path %}

        {% if not model.name.startswith('v_') %}
            {{ exceptions.warn('Invalid naming convention. Stage objects must start with "stg_": ' ~ model.path) }}
        {% endif %}

    {% elif 'processed' in model.path %}

        {% if not model.name.startswith('processed_') %}
            {{ exceptions.warn('Invalid naming convention. Processed objects must start with "stg_": ' ~ model.path) }}
        {% endif %}

    {% elif 'hubs' in model.path %}

        {% if not model.name.startswith('hub_') %}
            {{ exceptions.warn('Invalid naming convention. Hub objects must start with "stg_": ' ~ model.path) }}
        {% endif %}

    {% elif 'links' in model.path %}

        {% if not model.name.startswith('link_') %}
            {{ exceptions.warn('Invalid naming convention. Link objects must start with "stg_": ' ~ model.path) }}
        {% endif %}

    {% elif 'sats' in model.path %}

        {% if not model.name.startswith('sat_') %}
            {{ exceptions.warn('Invalid naming convention. Sat objects must start with "stg_": ' ~ model.path) }}
        {% endif %}

    {% endif %}

{% endmacro %}



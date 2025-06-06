PGDMP              	        }            ProyectoSegundoCorte    16.2    16.2 M    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            b           1262    41014    ProyectoSegundoCorte    DATABASE     �   CREATE DATABASE "ProyectoSegundoCorte" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
 &   DROP DATABASE "ProyectoSegundoCorte";
                postgres    false            �            1259    41360    ciudad    TABLE     h   CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre_ciudad character varying(30)
);
    DROP TABLE public.ciudad;
       public         heap    postgres    false            �            1259    41070    contrato_mantenimiento    TABLE     1  CREATE TABLE public.contrato_mantenimiento (
    id_contrato integer NOT NULL,
    id_proveedor integer NOT NULL,
    costo_servicio_dolares integer NOT NULL,
    cobertura character varying(30) NOT NULL,
    duracion_servicio character varying(15) NOT NULL,
    id_personal_encargado integer NOT NULL
);
 *   DROP TABLE public.contrato_mantenimiento;
       public         heap    postgres    false            �            1259    41030    empalme_enlacenodo    TABLE     W   CREATE TABLE public.empalme_enlacenodo (
    id_enlace integer,
    id_nodo integer
);
 &   DROP TABLE public.empalme_enlacenodo;
       public         heap    postgres    false            �            1259    41025    enlace_fibraoptica    TABLE     N  CREATE TABLE public.enlace_fibraoptica (
    id_enlace integer NOT NULL,
    distancia_enlacekm integer,
    capacidad_transmision_gbps integer NOT NULL,
    fecha_instalacion date,
    tipo_conexion character varying(20) NOT NULL,
    ancho_banda_mhz integer,
    velocidad_gbps integer NOT NULL,
    latencia_us integer NOT NULL
);
 &   DROP TABLE public.enlace_fibraoptica;
       public         heap    postgres    false            �            1259    41194    equipos_involucrados    TABLE     �   CREATE TABLE public.equipos_involucrados (
    id_mantenimiento_componentedered integer NOT NULL,
    nombre_equipos character varying(100)
);
 (   DROP TABLE public.equipos_involucrados;
       public         heap    postgres    false            �            1259    41038    localizacion_nodo    TABLE     �   CREATE TABLE public.localizacion_nodo (
    id_localizacion_nodo integer NOT NULL,
    id_pais integer NOT NULL,
    id_ciudad integer NOT NULL,
    direccion character varying(60) NOT NULL,
    codigo_postal integer
);
 %   DROP TABLE public.localizacion_nodo;
       public         heap    postgres    false            �            1259    41015    localizacion_torre    TABLE     �   CREATE TABLE public.localizacion_torre (
    id_localizacion_torre integer NOT NULL,
    id_pais integer NOT NULL,
    id_ciudad integer NOT NULL,
    direccion character varying(60) NOT NULL,
    codigo_postal integer
);
 &   DROP TABLE public.localizacion_torre;
       public         heap    postgres    false            �            1259    41189    mantenimiento_componentedered    TABLE     s  CREATE TABLE public.mantenimiento_componentedered (
    id_mantenimiento_componentedered integer NOT NULL,
    id_torre integer NOT NULL,
    id_enlace integer NOT NULL,
    id_nodo integer NOT NULL,
    id_contrato integer NOT NULL,
    id_tipo_mantenimiento integer NOT NULL,
    fecha date,
    hora time without time zone,
    observaciones character varying(200)
);
 1   DROP TABLE public.mantenimiento_componentedered;
       public         heap    postgres    false            �            1259    41033    nodo_red    TABLE     E  CREATE TABLE public.nodo_red (
    id_nodo integer NOT NULL,
    tipo_nodo character varying(50) NOT NULL,
    id_propietario integer NOT NULL,
    fecha_instalacion date,
    id_localizacion_nodo integer,
    protocolo_soportado character varying(30) NOT NULL,
    estado_firmware_software character varying(20) NOT NULL
);
    DROP TABLE public.nodo_red;
       public         heap    postgres    false            �            1259    41355    pais    TABLE     b   CREATE TABLE public.pais (
    id_pais integer NOT NULL,
    nombre_pais character varying(30)
);
    DROP TABLE public.pais;
       public         heap    postgres    false            �            1259    41370    personal_encargado    TABLE     �   CREATE TABLE public.personal_encargado (
    id_personal_encargado integer NOT NULL,
    personal_encargado character varying(50)
);
 &   DROP TABLE public.personal_encargado;
       public         heap    postgres    false            �            1259    41375    propietario    TABLE     w   CREATE TABLE public.propietario (
    id_propietario integer NOT NULL,
    nombre_propietario character varying(50)
);
    DROP TABLE public.propietario;
       public         heap    postgres    false            �            1259    41365 	   proveedor    TABLE     q   CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    nombre_proveedor character varying(40)
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    41155    tipo_mantenimiento    TABLE     �   CREATE TABLE public.tipo_mantenimiento (
    id_tipo_mantenimiento integer NOT NULL,
    tipo_mantenimiento character varying(30) NOT NULL
);
 &   DROP TABLE public.tipo_mantenimiento;
       public         heap    postgres    false            �            1259    41020    torre_comunicacion    TABLE     J  CREATE TABLE public.torre_comunicacion (
    id_torre integer NOT NULL,
    nombre_torre character varying(50) NOT NULL,
    id_propietario integer NOT NULL,
    fecha_instalacion date,
    id_localizacion_torre integer,
    capacidad_soporte_kg integer,
    "nivel_señal_dbm" numeric NOT NULL,
    id_enlace integer NOT NULL
);
 &   DROP TABLE public.torre_comunicacion;
       public         heap    postgres    false            Y          0    41360    ciudad 
   TABLE DATA           :   COPY public.ciudad (id_ciudad, nombre_ciudad) FROM stdin;
    public          postgres    false    226   �v       T          0    41070    contrato_mantenimiento 
   TABLE DATA           �   COPY public.contrato_mantenimiento (id_contrato, id_proveedor, costo_servicio_dolares, cobertura, duracion_servicio, id_personal_encargado) FROM stdin;
    public          postgres    false    221   �x       Q          0    41030    empalme_enlacenodo 
   TABLE DATA           @   COPY public.empalme_enlacenodo (id_enlace, id_nodo) FROM stdin;
    public          postgres    false    218   q{       P          0    41025    enlace_fibraoptica 
   TABLE DATA           �   COPY public.enlace_fibraoptica (id_enlace, distancia_enlacekm, capacidad_transmision_gbps, fecha_instalacion, tipo_conexion, ancho_banda_mhz, velocidad_gbps, latencia_us) FROM stdin;
    public          postgres    false    217   �{       W          0    41194    equipos_involucrados 
   TABLE DATA           `   COPY public.equipos_involucrados (id_mantenimiento_componentedered, nombre_equipos) FROM stdin;
    public          postgres    false    224   �~       S          0    41038    localizacion_nodo 
   TABLE DATA           o   COPY public.localizacion_nodo (id_localizacion_nodo, id_pais, id_ciudad, direccion, codigo_postal) FROM stdin;
    public          postgres    false    220   !�       N          0    41015    localizacion_torre 
   TABLE DATA           q   COPY public.localizacion_torre (id_localizacion_torre, id_pais, id_ciudad, direccion, codigo_postal) FROM stdin;
    public          postgres    false    215   Ј       V          0    41189    mantenimiento_componentedered 
   TABLE DATA           �   COPY public.mantenimiento_componentedered (id_mantenimiento_componentedered, id_torre, id_enlace, id_nodo, id_contrato, id_tipo_mantenimiento, fecha, hora, observaciones) FROM stdin;
    public          postgres    false    223   3�       R          0    41033    nodo_red 
   TABLE DATA           �   COPY public.nodo_red (id_nodo, tipo_nodo, id_propietario, fecha_instalacion, id_localizacion_nodo, protocolo_soportado, estado_firmware_software) FROM stdin;
    public          postgres    false    219   ��       X          0    41355    pais 
   TABLE DATA           4   COPY public.pais (id_pais, nombre_pais) FROM stdin;
    public          postgres    false    225   ƚ       [          0    41370    personal_encargado 
   TABLE DATA           W   COPY public.personal_encargado (id_personal_encargado, personal_encargado) FROM stdin;
    public          postgres    false    228   u�       \          0    41375    propietario 
   TABLE DATA           I   COPY public.propietario (id_propietario, nombre_propietario) FROM stdin;
    public          postgres    false    229   ��       Z          0    41365 	   proveedor 
   TABLE DATA           C   COPY public.proveedor (id_proveedor, nombre_proveedor) FROM stdin;
    public          postgres    false    227   w�       U          0    41155    tipo_mantenimiento 
   TABLE DATA           W   COPY public.tipo_mantenimiento (id_tipo_mantenimiento, tipo_mantenimiento) FROM stdin;
    public          postgres    false    222   �       O          0    41020    torre_comunicacion 
   TABLE DATA           �   COPY public.torre_comunicacion (id_torre, nombre_torre, id_propietario, fecha_instalacion, id_localizacion_torre, capacidad_soporte_kg, "nivel_señal_dbm", id_enlace) FROM stdin;
    public          postgres    false    216   ۢ       �           2606    41364    ciudad ciudad_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);
 <   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_pkey;
       public            postgres    false    226            �           2606    41076 2   contrato_mantenimiento contrato_mantenimiento_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.contrato_mantenimiento
    ADD CONSTRAINT contrato_mantenimiento_pkey PRIMARY KEY (id_contrato);
 \   ALTER TABLE ONLY public.contrato_mantenimiento DROP CONSTRAINT contrato_mantenimiento_pkey;
       public            postgres    false    221            �           2606    41029 *   enlace_fibraoptica enlace_fibraoptica_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.enlace_fibraoptica
    ADD CONSTRAINT enlace_fibraoptica_pkey PRIMARY KEY (id_enlace);
 T   ALTER TABLE ONLY public.enlace_fibraoptica DROP CONSTRAINT enlace_fibraoptica_pkey;
       public            postgres    false    217            �           2606    41042 (   localizacion_nodo localizacion_nodo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.localizacion_nodo
    ADD CONSTRAINT localizacion_nodo_pkey PRIMARY KEY (id_localizacion_nodo);
 R   ALTER TABLE ONLY public.localizacion_nodo DROP CONSTRAINT localizacion_nodo_pkey;
       public            postgres    false    220            �           2606    41019 *   localizacion_torre localizacion_torre_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.localizacion_torre
    ADD CONSTRAINT localizacion_torre_pkey PRIMARY KEY (id_localizacion_torre);
 T   ALTER TABLE ONLY public.localizacion_torre DROP CONSTRAINT localizacion_torre_pkey;
       public            postgres    false    215            �           2606    41193 @   mantenimiento_componentedered mantenimiento_componentedered_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_pkey PRIMARY KEY (id_mantenimiento_componentedered);
 j   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_pkey;
       public            postgres    false    223            �           2606    41037    nodo_red nodo_red_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.nodo_red
    ADD CONSTRAINT nodo_red_pkey PRIMARY KEY (id_nodo);
 @   ALTER TABLE ONLY public.nodo_red DROP CONSTRAINT nodo_red_pkey;
       public            postgres    false    219            �           2606    41359    pais pais_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id_pais);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    225            �           2606    41374 *   personal_encargado personal_encargado_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.personal_encargado
    ADD CONSTRAINT personal_encargado_pkey PRIMARY KEY (id_personal_encargado);
 T   ALTER TABLE ONLY public.personal_encargado DROP CONSTRAINT personal_encargado_pkey;
       public            postgres    false    228            �           2606    41379    propietario propietario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.propietario
    ADD CONSTRAINT propietario_pkey PRIMARY KEY (id_propietario);
 F   ALTER TABLE ONLY public.propietario DROP CONSTRAINT propietario_pkey;
       public            postgres    false    229            �           2606    41369    proveedor proveedor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    227            �           2606    41159 *   tipo_mantenimiento tipo_mantenimiento_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.tipo_mantenimiento
    ADD CONSTRAINT tipo_mantenimiento_pkey PRIMARY KEY (id_tipo_mantenimiento);
 T   ALTER TABLE ONLY public.tipo_mantenimiento DROP CONSTRAINT tipo_mantenimiento_pkey;
       public            postgres    false    222            �           2606    41024 *   torre_comunicacion torre_comunicacion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_pkey PRIMARY KEY (id_torre);
 T   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_pkey;
       public            postgres    false    216            �           2606    41400 H   contrato_mantenimiento contrato_mantenimiento_id_personal_encargado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contrato_mantenimiento
    ADD CONSTRAINT contrato_mantenimiento_id_personal_encargado_fkey FOREIGN KEY (id_personal_encargado) REFERENCES public.personal_encargado(id_personal_encargado);
 r   ALTER TABLE ONLY public.contrato_mantenimiento DROP CONSTRAINT contrato_mantenimiento_id_personal_encargado_fkey;
       public          postgres    false    221    4766    228            �           2606    41395 ?   contrato_mantenimiento contrato_mantenimiento_id_proveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contrato_mantenimiento
    ADD CONSTRAINT contrato_mantenimiento_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);
 i   ALTER TABLE ONLY public.contrato_mantenimiento DROP CONSTRAINT contrato_mantenimiento_id_proveedor_fkey;
       public          postgres    false    4764    221    227            �           2606    41087 4   empalme_enlacenodo empalme_enlacenodo_id_enlace_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empalme_enlacenodo
    ADD CONSTRAINT empalme_enlacenodo_id_enlace_fkey FOREIGN KEY (id_enlace) REFERENCES public.enlace_fibraoptica(id_enlace);
 ^   ALTER TABLE ONLY public.empalme_enlacenodo DROP CONSTRAINT empalme_enlacenodo_id_enlace_fkey;
       public          postgres    false    218    4748    217            �           2606    41310 5   empalme_enlacenodo empalme_enlacenodo_id_enlace_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.empalme_enlacenodo
    ADD CONSTRAINT empalme_enlacenodo_id_enlace_fkey1 FOREIGN KEY (id_enlace) REFERENCES public.enlace_fibraoptica(id_enlace);
 _   ALTER TABLE ONLY public.empalme_enlacenodo DROP CONSTRAINT empalme_enlacenodo_id_enlace_fkey1;
       public          postgres    false    217    4748    218            �           2606    41092 2   empalme_enlacenodo empalme_enlacenodo_id_nodo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empalme_enlacenodo
    ADD CONSTRAINT empalme_enlacenodo_id_nodo_fkey FOREIGN KEY (id_nodo) REFERENCES public.nodo_red(id_nodo);
 \   ALTER TABLE ONLY public.empalme_enlacenodo DROP CONSTRAINT empalme_enlacenodo_id_nodo_fkey;
       public          postgres    false    4750    218    219            �           2606    41315 3   empalme_enlacenodo empalme_enlacenodo_id_nodo_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.empalme_enlacenodo
    ADD CONSTRAINT empalme_enlacenodo_id_nodo_fkey1 FOREIGN KEY (id_nodo) REFERENCES public.nodo_red(id_nodo);
 ]   ALTER TABLE ONLY public.empalme_enlacenodo DROP CONSTRAINT empalme_enlacenodo_id_nodo_fkey1;
       public          postgres    false    218    4750    219            �           2606    41207 O   equipos_involucrados equipos_involucrados_id_mantenimiento_componentedered_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipos_involucrados
    ADD CONSTRAINT equipos_involucrados_id_mantenimiento_componentedered_fkey FOREIGN KEY (id_mantenimiento_componentedered) REFERENCES public.mantenimiento_componentedered(id_mantenimiento_componentedered);
 y   ALTER TABLE ONLY public.equipos_involucrados DROP CONSTRAINT equipos_involucrados_id_mantenimiento_componentedered_fkey;
       public          postgres    false    224    4758    223            �           2606    41350 P   equipos_involucrados equipos_involucrados_id_mantenimiento_componentedered_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipos_involucrados
    ADD CONSTRAINT equipos_involucrados_id_mantenimiento_componentedered_fkey1 FOREIGN KEY (id_mantenimiento_componentedered) REFERENCES public.mantenimiento_componentedered(id_mantenimiento_componentedered);
 z   ALTER TABLE ONLY public.equipos_involucrados DROP CONSTRAINT equipos_involucrados_id_mantenimiento_componentedered_fkey1;
       public          postgres    false    223    224    4758            �           2606    41390 2   localizacion_nodo localizacion_nodo_id_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.localizacion_nodo
    ADD CONSTRAINT localizacion_nodo_id_ciudad_fkey FOREIGN KEY (id_ciudad) REFERENCES public.ciudad(id_ciudad);
 \   ALTER TABLE ONLY public.localizacion_nodo DROP CONSTRAINT localizacion_nodo_id_ciudad_fkey;
       public          postgres    false    4762    220    226            �           2606    41385 0   localizacion_nodo localizacion_nodo_id_pais_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.localizacion_nodo
    ADD CONSTRAINT localizacion_nodo_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES public.pais(id_pais);
 Z   ALTER TABLE ONLY public.localizacion_nodo DROP CONSTRAINT localizacion_nodo_id_pais_fkey;
       public          postgres    false    4760    225    220            �           2606    41380 2   localizacion_torre localizacion_torre_id_pais_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.localizacion_torre
    ADD CONSTRAINT localizacion_torre_id_pais_fkey FOREIGN KEY (id_pais) REFERENCES public.pais(id_pais);
 \   ALTER TABLE ONLY public.localizacion_torre DROP CONSTRAINT localizacion_torre_id_pais_fkey;
       public          postgres    false    225    215    4760            �           2606    41197 L   mantenimiento_componentedered mantenimiento_componentedered_id_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_contrato_fkey FOREIGN KEY (id_contrato) REFERENCES public.contrato_mantenimiento(id_contrato);
 v   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_contrato_fkey;
       public          postgres    false    223    221    4754            �           2606    41340 M   mantenimiento_componentedered mantenimiento_componentedered_id_contrato_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_contrato_fkey1 FOREIGN KEY (id_contrato) REFERENCES public.contrato_mantenimiento(id_contrato);
 w   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_contrato_fkey1;
       public          postgres    false    223    4754    221            �           2606    41217 J   mantenimiento_componentedered mantenimiento_componentedered_id_enlace_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_enlace_fkey FOREIGN KEY (id_enlace) REFERENCES public.enlace_fibraoptica(id_enlace);
 t   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_enlace_fkey;
       public          postgres    false    217    4748    223            �           2606    41330 K   mantenimiento_componentedered mantenimiento_componentedered_id_enlace_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_enlace_fkey1 FOREIGN KEY (id_enlace) REFERENCES public.enlace_fibraoptica(id_enlace);
 u   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_enlace_fkey1;
       public          postgres    false    223    217    4748            �           2606    41222 H   mantenimiento_componentedered mantenimiento_componentedered_id_nodo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_nodo_fkey FOREIGN KEY (id_nodo) REFERENCES public.nodo_red(id_nodo);
 r   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_nodo_fkey;
       public          postgres    false    223    219    4750            �           2606    41335 I   mantenimiento_componentedered mantenimiento_componentedered_id_nodo_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_nodo_fkey1 FOREIGN KEY (id_nodo) REFERENCES public.nodo_red(id_nodo);
 s   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_nodo_fkey1;
       public          postgres    false    4750    219    223            �           2606    41202 V   mantenimiento_componentedered mantenimiento_componentedered_id_tipo_mantenimiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_tipo_mantenimiento_fkey FOREIGN KEY (id_tipo_mantenimiento) REFERENCES public.tipo_mantenimiento(id_tipo_mantenimiento);
 �   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_tipo_mantenimiento_fkey;
       public          postgres    false    223    4756    222            �           2606    41345 W   mantenimiento_componentedered mantenimiento_componentedered_id_tipo_mantenimiento_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_tipo_mantenimiento_fkey1 FOREIGN KEY (id_tipo_mantenimiento) REFERENCES public.tipo_mantenimiento(id_tipo_mantenimiento);
 �   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_tipo_mantenimiento_fkey1;
       public          postgres    false    4756    222    223            �           2606    41212 I   mantenimiento_componentedered mantenimiento_componentedered_id_torre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_torre_fkey FOREIGN KEY (id_torre) REFERENCES public.torre_comunicacion(id_torre);
 s   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_torre_fkey;
       public          postgres    false    223    216    4746            �           2606    41325 J   mantenimiento_componentedered mantenimiento_componentedered_id_torre_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.mantenimiento_componentedered
    ADD CONSTRAINT mantenimiento_componentedered_id_torre_fkey1 FOREIGN KEY (id_torre) REFERENCES public.torre_comunicacion(id_torre);
 t   ALTER TABLE ONLY public.mantenimiento_componentedered DROP CONSTRAINT mantenimiento_componentedered_id_torre_fkey1;
       public          postgres    false    216    4746    223            �           2606    41097 +   nodo_red nodo_red_id_localizacion_nodo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nodo_red
    ADD CONSTRAINT nodo_red_id_localizacion_nodo_fkey FOREIGN KEY (id_localizacion_nodo) REFERENCES public.localizacion_nodo(id_localizacion_nodo);
 U   ALTER TABLE ONLY public.nodo_red DROP CONSTRAINT nodo_red_id_localizacion_nodo_fkey;
       public          postgres    false    4752    220    219            �           2606    41320 ,   nodo_red nodo_red_id_localizacion_nodo_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.nodo_red
    ADD CONSTRAINT nodo_red_id_localizacion_nodo_fkey1 FOREIGN KEY (id_localizacion_nodo) REFERENCES public.localizacion_nodo(id_localizacion_nodo);
 V   ALTER TABLE ONLY public.nodo_red DROP CONSTRAINT nodo_red_id_localizacion_nodo_fkey1;
       public          postgres    false    219    4752    220            �           2606    41410 %   nodo_red nodo_red_id_propietario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nodo_red
    ADD CONSTRAINT nodo_red_id_propietario_fkey FOREIGN KEY (id_propietario) REFERENCES public.propietario(id_propietario);
 O   ALTER TABLE ONLY public.nodo_red DROP CONSTRAINT nodo_red_id_propietario_fkey;
       public          postgres    false    229    219    4768            �           2606    41082 4   torre_comunicacion torre_comunicacion_id_enlace_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_id_enlace_fkey FOREIGN KEY (id_enlace) REFERENCES public.enlace_fibraoptica(id_enlace);
 ^   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_id_enlace_fkey;
       public          postgres    false    216    217    4748            �           2606    41305 5   torre_comunicacion torre_comunicacion_id_enlace_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_id_enlace_fkey1 FOREIGN KEY (id_enlace) REFERENCES public.enlace_fibraoptica(id_enlace);
 _   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_id_enlace_fkey1;
       public          postgres    false    216    217    4748            �           2606    41077 @   torre_comunicacion torre_comunicacion_id_localizacion_torre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_id_localizacion_torre_fkey FOREIGN KEY (id_localizacion_torre) REFERENCES public.localizacion_torre(id_localizacion_torre);
 j   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_id_localizacion_torre_fkey;
       public          postgres    false    4744    216    215            �           2606    41295 A   torre_comunicacion torre_comunicacion_id_localizacion_torre_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_id_localizacion_torre_fkey1 FOREIGN KEY (id_localizacion_torre) REFERENCES public.localizacion_torre(id_localizacion_torre);
 k   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_id_localizacion_torre_fkey1;
       public          postgres    false    4744    216    215            �           2606    41300 A   torre_comunicacion torre_comunicacion_id_localizacion_torre_fkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_id_localizacion_torre_fkey2 FOREIGN KEY (id_localizacion_torre) REFERENCES public.localizacion_torre(id_localizacion_torre);
 k   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_id_localizacion_torre_fkey2;
       public          postgres    false    215    4744    216            �           2606    41405 9   torre_comunicacion torre_comunicacion_id_propietario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.torre_comunicacion
    ADD CONSTRAINT torre_comunicacion_id_propietario_fkey FOREIGN KEY (id_propietario) REFERENCES public.propietario(id_propietario);
 c   ALTER TABLE ONLY public.torre_comunicacion DROP CONSTRAINT torre_comunicacion_id_propietario_fkey;
       public          postgres    false    4768    216    229            Y   �  x�M��n�0E�ͯ�,�cw��d���Y�셶	��#����]�(�7���=�TU�Y|�DZ��vG~��,��i
n'�OԔŽ��k%Yx
�&�L7P	cH춋͂>��{w���U�+w�oUG�O��ӧ׮�.<��,���I�<1UUY����*0�}����/��F�7p�i�`�q� ��8�q�F|�#THsq�n���*_��>�E	��]ӆ�0�DK��e�^h	�����O�=Ӳ��g���;1�~@d�Տ1O�kX�k��Ax��5X�����Pm�/07�����|��K�uk�Q��	�`=�Z�j��f�e��~�nr�j ޱ��L5���#>��oq�T��hS3�l(?�${�/x���k��4��Qߣ<©���<S�M�����.�\�����ki`�Fb��ɞ'���)5��br��7�g���.��?����      T   |  x�}�?��@��ͧ� ���]B�D�D�����C�S.F���3{��7��b*��}�{;�%B!A���m|�av|�.���F9�lQX4�ixw��O�ϗ��t�����W�~���~8�����a8����mt;��>~��5ȋϝ�<o��f6x<>��?�S����S
������n8�F+k�����Ži$��|���+���w<Y�����郵iIQ�x��#1$HUwb)v����_�)'�����YX@�x�`
3!�����TT im	e����	�I��%d!`	�X~é�⇴Y��0}A��c�^,�x�^�=�mW�Pά]:�m�C�zJ�� ��6I(!( @���X��"ȑ��r\}�   ��g�v����q��()((@b�;�$� Y���H���yw�z[|�c�n�fS�`` ����W;�`��K�&�2������c^�� (��UKqp@�$�Q븍Ls�rW��Rw������c��rӍtt��s�kM��@�0^� #H����������T���������2����'�j�b!h-�� �tG�%g���mw�Y��� ���X�O>_���I�����F5�����p�M	�+      Q   p   x�̹�0 ��&'R��]��A�k��3cͲ\\<yrs��ś7>|���y�L��/���/���/���/��⫯��ꫯ��ꫯ��ꫯ��ꫯ���[�5��c���&�      P   �  x�uUK��@\;�xj�w$��%��S�Љ��!�4ʨ�)W�eML��S"I�g�'ӗ??��}{��ߔq!;4	e����J���x�~k�BY T��8Ϣ�ي�K&K@���D�����BV��@�Md=9�uQ�Qf�):�	. ���L
`��Ho	l{�h��bs!ڃcYp��);�N(	����h}�Cу�����RDUHQ4��>�E����U��CV�	�'^*+ю�2Vʨ<I��[eP��6R�a��P;�>Sr��i��@b�l�<���`�g!lNx�˕
fт�h���Z��������k kc���a�[ީfP����U�u��c�<�{R�?҂�VuL-�%70�E^�u* 绒J�j�2u�★�ZV�8S|l��GV�7��4Lr4b!��j�s^�$ -�$A�X��fR�%X��[��.D�2�KQ��	�[#���y��hPy�y{��t#]�)c�5�㞣uƘ��l1�[�ǻ�� �|�9���|yg�al��/6�G��8N�}��'��>�'�Ҟ��^(���,�~���^�~!��������at탢�K�9�e�B�x|{���y�n��)1��7���m�����/� ����)��VҾ�e�Td6�Ķ��oeA.�DX���(/w�X�Ix���M���s��_���{���ތ��d��ej�G����q5��      W   I  x��W�R�8]_��(� ��rCxܹ���Q�Nh�%�$'����d;V��.vYG�8�tgt���t�_���R���!IP
��"��gtzzˋO��l����+(����ӓ�y�}~Ƅ��0���>3�1��MK^�@���h��0�%����`"�����?3��>Uf؆yM��Y̕\pȘ���P�Es�+z�̲B`+���)݁ �R�[�0A��aN�,C���܀�����r�ІQ~U�F!fb��C�J�X�o����*Ы6�t�x��ڨ"1��2}|~�ǔv�.$�+�
g�ƙH���uP�~e*��s�D��0��6�M%��&�gi��E�J��w�b［'sk��k�j����V#z��oQZ�ۢ��x��o,l��L*s`��d+!�%.�>C�T��^�"[�2z��Ґ�}��{���J[.e�x�Ds�|�Gt��+��1��@]Ɣ��#鎿Pۗ�2�2�ou9�K����ř���HjK�|���+�hQۧL� ��#\��@�x�[�t_w�LUzPh��7�f��+��5�	a�=}�1�
�5&�(7�y����8��������L���6��ڑ��hQF1%�R�d����w�2��Y���*��/z]�{<y(�|F���aĤ4�7������(��Qf]�������n�h��l����?(�
e�9y^[Z�n�>���-MJj@�4����9�	ׂ$�ǉ,L`��c
`)��F�~�Rku�gs��n��X�qS%�sFֆƣQ�n��߽���HV�c\/w�Mm�!���;$�4QQ����up~�G�M���ׇ�m��^'l��ҦfR(J��:s�=�o�"l	Z���Tet����o�в�a�S���J������o�����c-��P�~H��\B�7e@��Ů��1vn��"A�F��-Bn7�J̞s&pY��~��u��QR�-$�{�)9�M崗m�6�ҁ��_*�İHOD<��F�;���k�~��TK�6�&��h�S��=�u|��m�-�rEϣx꠆G��R,���VOg�(2�e�0U����3��o˰��7��֬�5b%�a�u�4�%��?�*XR�^��h�9�j:\uFCl��Zp�a/����Xc!��ef/K��=ܑH��!)m�
���N��gʔy���hJ'���|`�r�SV�m�/k�ջ�3d��c��]��YN��y�@.��nq��.����3 ���z���%~y�Q�+�эL�@��i���'� �OTޥ��GT|`��L��JUt��(���v��^s;�{�{vrr�?��
=      S   �  x�]U�r�F}��bg�*{x���Is��ZM2�����Ԯ�$�Q���%�垱<K`�=8 �$%���<]�/��Ɓ�M���M��"�+�+�:k>��yS�sJS}���~k�Cܱ�ꆦ�aM/�<����m0)BVe�L���u8�.�o8�|^��Y��`NXr�5W������ә��]0_X��{ǈ�ϊ�G��{�AR�M��؋}��Ԅ5e{�k���W�Z��u^����y����)�'�_CX	]vO�i��Bo�1�m�J���	��p��<�f���H��Z�����sM9�j�R$�f��B�E��/OE�����'�.���c���H'��\7-H�B/E7���"��|�������rf�t�\d�x��8�[&3���f	���>�Zwan֖�*u)UM_�G0e�\�ISPMQ~��r��rY8�b����w��!xs��z��4"�<)�L���f=�w�
(N����b2�[�vx���YJ
�.��z���m9�!N�)�Q�-#Hh���03�m@���?�H�;6>��ۮ(� EB�f�'�P��m�.���CJR���]�Z~v~#���F8Ƞr��[����=�3uzV�Bn�W�k�{!�\S�I��'H{��\q?��C]�n֐�B%����z*�S�ȑn����8l���>Z��k�s�(Q���1����%h��sJ��WH��NNx<����p�H��D:�,C�N#�o��6�c�����9&��f�;���4K�^oǻ�x¦�V���#mu�� �����-�!�;�&��KR�_�P녴�ߘ[޳L͓X?��:�R� ����^��wo�ey�xܧR�V�8�Ɉ���H���-��\d����DWc�0�e���ƈ@{#��yC��$/�����ŉ�{��W�G��Dŋ��c���*G��tS2��	ݎҜ;��M���? �A:�c�����|2R�� ����[קі��y��cN���OK�2��{������Qp��E��=|@n:����:�M7�,�*�ע$�/WP�c>v�=�?}.Y�Z"O�xN
����'��OLw��Z�=H%IQ��"š�D#�Y�x<��xB5)׼f�f�i�攚-��M������pk�a���<?��w�>a���	�R��#�q&˲�ynF�	������ ��ly      N   S  x��U�R�F]7_1U�jF?����q� �M6mk� k\#�	|}N�,.d��S �=�}N?�#K�3��)�t�5.ˋ�Y����9ɷ$_�8��`�)���7�U��M9�M�-�~'<�BN8Å�[sϛ� �����L�˂p�۰���*&����TE��U�nC�䬛h��ۈ�ci�)��ff~��if$n#��8[��6�0��׵7+0N Q�S�jnb�	�`8#��0��T�������lN8C��;~����ܩ+f��<�O�o}�"e��ƂpFǏ��7�j�A�����A�㕩)OK����;����j)ͮ���=�4��Rԉy�!l4)໽���^F���M�������?�m�	[��G�.'�p�[M�M��ѿĴC4��V����_��?a#Ւ4R|!����@��n�cW���miM^����a3%���6�������A76G�3RX�	)6��o``��o\k��9)���j�	]�0���:Q��-H1�������Qڅ��]�|B�#�ƅ��|�p�4�^��Cʙ#��%˔&��_�EB��:l�ǡ{;i�X���0O�Ǵ�]���4��Ia��Pz5A���s%�� ���F�{�[����(BV�A9�c���;�i;���>��<RDg��2����kF
a��6��r��dN
KOݑY�quA
��'�^�����Z;z m�h^�,�m=�H~t�;R���u��O�>���'�H!��M��<��4D�Odx�������DI8DV�
���iW��Pǉ�=�G���%)���`�R�_�d�7���ܧ������F�HcZt>#�縠21�;Т��9)ư���t�֢�rp1{o.y1_����b�ALa�_:3XNL����)�R��ľ����u A,'�Yd��*�e=z,�Z�X���EN
KC����{�}:�����g�gt\�����R����p�BQ���x_�x��?�
l�
αAJ��SRXzL���7���-�S�J3R�2�����/)�jc���Q�I�9�e�TҞ���5)���>��
>��*Vx]c�vo	i
ut4^�������*      V   E	  x��YMs�8=;��?@�"ф$���a[5����&!�)����6ί����=٭�L\���-K|��m��Nh��s���|����.�?�S���cꭿ6C㺬r��t��j��&��z����V���S�{{�]㳳i[7d.k���Sk|S���������������1W�`PR��%6�W@I��w�:�%S��ҷ�b��T�
dL�_������j���2K�����0���C+os��"or��\�oxٶ�����K3g3ggJ��(sƿ�]~8�bΟ��OvM�tL�૧̌��;��q�95���lh���KUx��;3z�ћ+^�c�����X�̦�d�k'�@oz\����S�i	�eb�F9�w՞������t�ϋ��+�Z9�릃����P|{a�]r��<�NL���Ǒ��[���45�h�Ԡ�M6���S�g���*^5�'��kP�Gּ�����}΄GȎ��$�0�G%�>��o{hZ��6����=��q6�3�p�OZ2���&j8b@βցo.�~<�c?����9�&�ꖉ���@쐈�Q&F�+Ne(+��_cBr�Q�U
�R!s���*3�l�L��j�t�㻴�+�Ї�����d2���vG�>��1�f��7���%a�96�T�gr�CM�x<������A-Wc�!Q9c�ɝL���������>qc��U��R�}��������s�
�Cj(Mw����F���X����xmah8Nf�eש��O�i�BK��/�s(�;������ե4W�R/���\�z?Tg|�9�ip���x.�wn�E���ڳ�o:�PEBE�b���̴
�YC� t���+fo�\Z�ۿ{WY86�x�|��ъ0�[麘�/v�������x�f�Jd�WC3���1u(@�.���1��"��A>G:�ߜ��������J�G��bÄ�M^4�7�6��޵�3�^��)����!b �H���p���RJ7�0{�w�E��bG/��sn��� ���M{@�`��"��v�}�(ی#�;4������n �H���p�+9$�·�]��(�����>�[u��g�����cH~�&�%̷%�l!r �H���p�T�H���8O�&92�=���}��V�{�BNqJ��؅�@�.���1ˀC'��s�0B��v�0�uV"�Bq@ٚ���������%�k�|͒�|�$e��^��ZFh��E66�cnf,9S��MN5��V
}t�k�#����u�Ʀ(�'� ��k2e�"F�ˌ!\ �H���pDgJt�^��0��.f�΋#��W��]z��h�u�|�����Y��9��w��H�	��V#���E�@6�#j Juҡ7�Nf�~6�%W'E��n{n�\�e�F�V<| @��}Jd/��	|�*�)]���f��6'�ek�~m��mu���;e����h��O��-��*e��疀�Wۅe�:�/,��C+PP,� ���)�1�d�^:i��
}X�������,~[��-mU(��U60%�@�VI��H-3"��8���㆛Gq��7V��એ������(�#�Z�'�`Bv MxF�#���,�CZR��#h
 @�$M*�Ҳ������#�N/r��H�T��l�mp�Z1�2@�VI���ϲ�aS,Ra�X�[�ͭ������L�H}�-j�t�3 Z%R">�uӜg�_��m?K�ݶ�(%3�M
:D����M:ܯ1~7�n�Kû��-:�� @��SJ$j�)^�T��O����;�z����7�h��66������{0�� h�dI�"�<�R�����N�`��ꚑ��g�X�{6��8����i[���Q�
�� ��)ѡ�9IxP-N��O�[�>��f���T��b�)�����vN�DZ��$������xv-��4�M`��*��)�!6 ���1�Ֆ��&VG�2hJ���p�-v޿���HP0� MI�H~�H3u,�����VG��hJ���pD�z�w��Ց w ���1�q=,c?uu$�!@����lG�ǋeS�ѫ#A� 4%�cc8b�e?��VG��hJ���pD_�e��#A� 4%�cc8�3W��[^K(@�.��1Q�*��W�
�ˤ}l���
�FV��ˤ~lG\y�����V���ˤelG��㲧��ձ�
�2�S)$[-_zY����XB� t����ሿW�eG�kV�J�ˤAlG�R�eW���c	��eR 6�c��Oڼ���XB� t�t���X׍z���_�J_Bn t�����>�/���+��� h���X��������J��_޽{�ȁy�      R   .  x��V�r�8]+_�e�`�z��$���T�f6j�N\cpʘ�鯟#�H;��Te����8�{.%��X��D��\�G.�8n&�EL�N�^�CV�o<���-��g X�F4���f��:ȴ:�<�%��̲R��<������ט��;A��
� ���AfCwx�������l_��b�<�$�>�'�b�vx�oާtD���F�{U�!Y�%��-�Q}K@��r ��ܗ��I���DH��P=�����IT�Z��6�����nۨK�u�e.��F�I�#ƈ�q��W(JV�z+��qU��Ym��*J�����8�C�33B�!%�U�˙2�-+�'.�Wt�9���@V�������L��	8N���8Y p��s��Ri�%�C�v��bZg����@�L�ׁ��9m	EY���� �G�gU�����3����[��t ��{ZF��i�O��  0�G���!S�Ld�E�]]`�Y�) ���C�6,��o�`R�oE�י�v|���� �hD4
B���;�N��%#������:)a�b'����;e&��0�5-e8n�N{��Rg^*]ڏ��i.`M�"-r�}.�S�7���vߕ2�Ĺ�M�$m(�s�B�0yǳ�,9I��KnI��{��N��F��9x�E���01P�լ�WL���fR��jr1ae�g�*^�(�<�U��~�ψ�+�Yol>��uP�!O����/�ǁ<b��e~�U�#\������ᕂ���i����q/��NP� Y=�m��#`:w�D~Ǩ6�P���V�@h���d��(95�ЂÍQ��^ə֘����+9�f5���+�0�� o�����Qr���%7F�};���Qv�\[��n�;V��݈�V�!����o���^��G�FӮ�
��$\� B�V�:s�N�B���!���̮I\0
�ò$����	�]B�����]ݐ��?IX%����R�?kH�791]��nZ�Ǧ$��j��qpQE�LI�����lt/z�)gև�&���w��}[�/k��}I�������3u      X   �  x�M��n�0�ϻO�'(D��죭���q�S/k�u�R�A�nݧ��A�܆�O��*Z���6ѻ�nh�dr��/�[^P�Y�'w���%��1��|���TM�Yf;�V��͎����_V}��1�2��$�����P��WV�lʬ��d����W��n�V�=��k�a���-:kEزָе���}N�udm��2T��9�Y���ːzAIL4��_P�\�}�� bE{	X��|,;�˱ꓛf�y�>:{�7���p�i������ɾJ�;�ii��T��~ê:ڟ�A,�+�5O�\��rr�C���^F�blt��0��4'����NI,n�̂�� ���w����a��2��5�x50�ֿR	�z��>H����������q      [   o  x����r� ���>AF��e�Nw]t��;f"8�}���5X���p�_[��C�P+�ƕK�ݡh+J�Ph%6aF.�SZ9o�4�S~�� ț�Q(~A�Jԥ��`��r��Yp�7�c���(8nZ�xGa�!�s���Ӵ�����}E�X�W��ɽ�r�7s����1ꚼ�E��T�G�h�5�|��L�?EP[�,\��!:����EX�L���8%���q�Q֬�9�?*�4_��I���s�6j{]�r=�L�i���n_d�vJ3l����b;�}�i��Ӷ�6a;=e�N�Y��*i;ۣ��ig)�Y.�,E;ˢ�����hg��;�C퐢�h�<�!M;��q�!E;���$h�>E�%3      \   s  x�uT͎�0>��� �$�іV+����Ћ�q�Eb#ǰl���ㄘ�{�"�x����j��'S]�\(�eMץ3�����f���� ��7��!��yJ��捗?���Jt��|���5[�O� K)L���d���ɣ����|�М�O�ҲK� !� ]r!ihJ�ӵ��x-oȢ���^mJsT�!5�9"i7�"-��g��5�"+�5��0�ۙ�B5��@'N_di���e��<��X�$#{i�
�jZ������P�y�. �ٻ�t�Q;Y�2�~t�U�DxR�-���x��!;�F�x|-?���H[��A�u-��M+�EB���n�;wY �
P�^,�b|����#����(�+���aٰ�^i�U�r~bXZ��<`����F��n9[�r�fS����U^9�����P�,i؀N�t�T3N����IܾsT��Cf���2�㻱'�KӘ^P�0�o���=�ILt�`�A4��7H�W�����#�C�����~���`�9Th�:f��G��6����
�
׼8��J�n*����B�|T���A�l�?�x���D�Y(�`�-?�u�Nd��E-��/W�0*�P���3�a�P&'��UՎ�ɯ�d2�+d
�      Z   �  x���Mn�0���)|�¶d�Y�Af�2u��lT�i�Ȣ!�M}������������rX�^SZ�}��O����AФ��Yz58�~�t��_���)a�MT앰U�ҕ�ܐ�a�b�7��tKƅ��]8(��O^�M�X½yG��ͱsL�<���Ũ9�6�|W�������J���^顉��7S�%ܚWՒc]�Ԛ�\�j�Zuz������4d	ug�O�"���I7F{�:��^퐻
�6����|G^3�[�z�]7�K	ϽV=�֖�fg��-*�����+�ޔ�'��S\½j>�*��{Pvd[dlw�Y��Ɓ8Á��@�p �91�8'�3�9�w��<�ȁ�8�s�3Ȉy������$I��0 *      U   �   x�}�;�0��9ڟ� ��B�( ��"q{��H9z���iMD�KY���~lk�i絔e�A2k��>�����n�܁{� ��*`��Ր�O��S�i���S��Թ�i(�X���5�i��:w9�s4�u4�u4���g0w��0�A@6 h6 ��9�~�3��\O)�/���      O   v  x�U��n�6E�����p����i�@�]lyX�Q���,�����{�)H�L���ܹ���|�����[?��Ŵ���,+:V�J�����3\��$O��;ı��nw��[C� !UX(xS<��i�&��l���;�l�������M�k1$�E�@�r��%,�t����!A#�MH{8H�&�#�_n*��H��(�N=�d!�ԛ��i��Ӹ���MUI��MmlR�P5��S��*j� mR�N��5�L7��U5m����65�4��`��4_��8��Y5r�J%k>�a� ��?���}(��4(�z H��
�i�.1Il�Ř���ƟZh� �x���9�0q�� B�$@P��O���f�J6�MH�l���S|@���!|���6��՘z��P���9t�A������ �a����(��s�a|�f��b�4��K\@��K��7��AS}����S��������}�T����(j�lUf6`�cLk�r~�B�ͺ9�f��_�[�1 K�Y����0��l6��X��x�n�1a�B��~��?��m���-P���ִ0��x� ^��}o���b@��m��x���qet;Q��G|[�_����PI�{#��Q ��w��4��,fWmdM �� o3�����5�)FN#k�[�_IZ����-"og��=i��qk �$��3�'������}7��q)0|�����-̯
����D��Hc`x��>�/�[0�;, J�2`�pg|Sj0���ظ 	&�,%5��K/&e�?B�ڕ?f����x��������������� ��������E/%o|Z}����s|�C���cXGU/U�$~n�Q���f>�J��>(2�s{O1,z�l�^�(���z
��>߰R�= @�� ꒩���-�r��z�����$蒡�8�$�_�"ʚ�aХ�������\o}�5��KF�iЛ�����Q��i��s)�;X�=ٷ^����y#��c]�))�4��^��i�S|�K���kRȞ�z���ץG��KY�s�N#_����(�j�|! /%�����G�zec��pw�{��q����e��W�<�� �n.p     